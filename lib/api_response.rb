require 'cgi'
require 'digest'
require 'fileutils'
require 'tmpdir'

module Turk

# Wraps an HTTParty response from the ETEngine API.
#
# HTTParty only parses bodies it recognises, so an HTML error page arrives as a
# String. `response["gqueries"]` is then a substring match on the page rather
# than a lookup, and the real error - usually an exception in ETEngine - stays
# hidden. #json! refuses anything which is not a JSON object and reports what
# the server actually said instead.
class ApiResponse

  # How much of a page to quote when it does not name an exception.
  EXCERPT_LENGTH = 500

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
    [
      "#{description} returned #{code} (#{@response.headers['content-type']}), not JSON.",
      page_summary,
      report_link
    ].compact.join("\n  ")
  end

  # What the page says: a Rails exception page names the exception, anything
  # else - a production error page, a proxy - gets quoted.
  def page_summary
    title, detail = rails_error
    return [title, detail].reject { |part| part.to_s.empty? }.join(': ') if title

    excerpt
  end

  # The readable text of a page which does not name an exception. Production
  # error pages are mostly stylesheet, so those go first.
  def excerpt
    text = plain_text(body.gsub(%r{<(style|script)[^>]*>.*?</\1>}m, ''))
    return nil if text.empty?

    text.length > EXCERPT_LENGTH ? "#{text[0, EXCERPT_LENGTH]}..." : text
  end

  def report_link
    path = write_report
    return nil unless path

    "Response body: #{terminal_link("file://#{path}")}" \
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

  # Writes the page to a temp directory of its own and returns its path, named
  # after its content so repeated failures share one file. Returns nil when
  # there is nothing to write, or nowhere to write it.
  def write_report
    return nil if body.empty?

    dir = File.join(Dir.tmpdir, 'mechanical_turk')
    FileUtils.mkdir_p(dir)

    path = File.join(dir, "turk-response-#{Digest::SHA1.hexdigest(body)[0, 8]}.html")
    File.write(path, body) unless File.exist?(path)
    path
  rescue SystemCallError
    nil
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
