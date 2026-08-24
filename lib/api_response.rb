require 'cgi'
require 'fileutils'

module Turk

# Wraps an HTTParty response from the ETEngine API.
#
# HTTParty only parses bodies it recognises, so an HTML error page arrives as a
# String. `response["gqueries"]` is then a substring match on the page rather
# than a lookup, and the real error - usually an exception in ETEngine - stays
# hidden. #json! refuses anything which is not a JSON object and reports what
# the server actually said instead.
class ApiResponse

  # Numbers the response body reports written during this run.
  def self.next_report_number
    @report_number = (@report_number || 0) + 1
  end

  def self.json!(response)
    new(response).json!
  end

  def initialize(response)
    @response = response
  end

  # Returns the parsed JSON body, raising Turk::MissingReponse when the server
  # sent something else, or reported errors.
  def json!
    body = @response.parsed_response
    raise(Turk::MissingReponse, non_json_message) unless body.is_a?(Hash)

    errors = Array(body['errors'])
    raise(Turk::MissingReponse, "#{description} returned #{code}: #{errors.join(', ')}") if errors.any?

    body
  end

#######
private
#######

  def code
    @response.code
  end

  def body
    @response.body.to_s
  end

  def non_json_message
    message = "#{description} returned #{code} (#{@response.headers['content-type']}), not JSON."

    title, detail = rails_error
    message += "\n  #{title}: #{detail}" if title

    return "#{message}\n\n#{body}" if body.length <= 1_000

    "#{message}\n  Response body: #{terminal_link("file://#{write_report}")}" \
      "\n  Cmd-click the link, or paste it into a browser, to read the page and its backtrace."
  end

  # Describes the request without its query string: the gquery list is hundreds
  # of characters long and buries everything else. The report holds the full URL.
  def description
    method = @response.request.http_method.name.split('::').last.upcase
    uri = @response.request.last_uri.dup
    gqueries = uri.query.to_s.scan(/gqueries(?:%5B%5D|\[\])=/).length
    uri.query = nil

    return "#{method} #{uri}" if gqueries.zero?

    "#{method} #{uri} (#{gqueries} #{gqueries == 1 ? 'gquery' : 'gqueries'})"
  end

  # Writes the response body to tmp/ and returns its path. Kept in the project
  # rather than the system temp dir so the reports are easy to find and clean up.
  def write_report
    dir = File.expand_path('../../tmp', __FILE__)
    FileUtils.mkdir_p(dir)

    path = File.join(dir, "turk-response-#{self.class.next_report_number}.html")
    File.write(path, body)
    path
  end

  # Wraps the URL in an OSC 8 hyperlink, which iTerm2, VS Code and friends make
  # clickable. Terminals without support, and piped output, show the plain URL.
  def terminal_link(url)
    return url unless $stdout.tty?

    "\e]8;;#{url}\e\\#{url}\e]8;;\e\\"
  end

  # Pulls the exception class and message out of a Rails exception page.
  def rails_error
    title = body[%r{<h1>\s*(.+?)\s*</h1>}m, 1]
    return nil unless title

    # Exception pages carry the message in the container, routing errors in a heading.
    detail = body[%r{<div class="message">\s*(.+?)\s*</div>}m, 1] ||
      body[%r{<h2>\s*(.+?)\s*</h2>}m, 1]

    [plain_text(title), plain_text(detail)]
  end

  def plain_text(html)
    CGI.unescapeHTML(html.to_s.gsub(/<.+?>/m, '')).gsub(/\s+/, ' ').strip
  end

end

end
