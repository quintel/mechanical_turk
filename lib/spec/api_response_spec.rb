require_relative 'spec_helper'

describe Turk::ApiResponse do

  let(:client) do
    Class.new do
      include HTTParty
      base_uri 'http://etengine.test/api/v3/scenarios'
    end
  end

  let(:url){ 'http://etengine.test/api/v3/scenarios/1.json?gqueries[]=total_co2_emissions' }

  # A Rails exception page, padded so it is reported as a file rather than inline.
  let(:exception_page) do
    <<~HTML + ('<div class="line">source</div>' * 50)
      <html><head><title>Action Controller: Exception caught</title></head>
      <body><header><h1>
        RuntimeError
          in Api::V3::ScenariosController#update
      </h1></header>
      <main><div class="exception-message">
        <div class="message">undefined method &#39;foo&#39; for nil</div>
      </div></main></body></html>
    HTML
  end

  def response_for(body, status: 200, content_type: 'application/json')
    WebMock.stub_request(:put, url).to_return(
      status: status,
      headers: { 'Content-Type' => content_type },
      body: body
    )

    client.put('/1.json', query: { gqueries: ['total_co2_emissions'] })
  end

  it "returns the parsed body of a JSON response" do
    body = Turk::ApiResponse.json!(response_for({ 'gqueries' => { 'foo' => {} }, 'errors' => [] }.to_json))
    expect(body['gqueries']).to eq({ 'foo' => {} })
  end

  it "reports the ETEngine exception behind a non-JSON response" do
    expect { Turk::ApiResponse.json!(response_for(exception_page, status: 500, content_type: 'text/html')) }
      .to raise_error(Turk::MissingReponse, /500 \(text\/html\), not JSON/)
  end

  it "reports the exception class and message of a Rails error page" do
    expect { Turk::ApiResponse.json!(response_for(exception_page, status: 500, content_type: 'text/html')) }
      .to raise_error(
        Turk::MissingReponse,
        /RuntimeError in Api::V3::ScenariosController#update: undefined method 'foo' for nil/
      )
  end

  it "writes the response body to tmp and links to it" do
    expect { Turk::ApiResponse.json!(response_for(exception_page, status: 500, content_type: 'text/html')) }
      .to raise_error(Turk::MissingReponse) do |error|
        path = error.message[%r{file://([^\s\e]+)}, 1]
        expect(File.read(path)).to eq exception_page
      end
  end

  it "names the report after the page, so repeated failures share one file" do
    paths = 2.times.map do
      Turk::ApiResponse.json!(response_for(exception_page, status: 500, content_type: 'text/html'))
    rescue Turk::MissingReponse => error
      error.message[%r{file://([^\s\e]+)}, 1]
    end

    expect(paths.uniq.length).to eq 1
  end

  it "makes the link clickable in a terminal" do
    allow($stdout).to receive(:tty?).and_return(true)

    expect { Turk::ApiResponse.json!(response_for(exception_page, status: 500, content_type: 'text/html')) }
      .to raise_error(Turk::MissingReponse, /\e\]8;;file:\/\/[^\s\e]+\e\\/)
  end

  # A production error page names no exception, so its text is the only summary
  # available - and it is mostly stylesheet.
  it "quotes a page which does not name an exception, without its stylesheet" do
    page = '<html><head><style>body { color: #EFEFEF; }</style></head>' \
      '<body><div>Something went wrong.</div></body></html>'

    expect { Turk::ApiResponse.json!(response_for(page, status: 500, content_type: 'text/html')) }
      .to raise_error(Turk::MissingReponse, /not JSON\.\s+Something went wrong\./)
  end

  it "describes the request without its gquery list" do
    expect { Turk::ApiResponse.json!(response_for('nope', status: 500, content_type: 'text/html')) }
      .to raise_error(
        Turk::MissingReponse,
        %r{PUT http://etengine\.test/api/v3/scenarios/1\.json \(1 gquery\) returned}
      )
  end

  it "reports the errors of an API error response" do
    body = { 'errors' => ['Input households_number_of_apartments_future does not exist'] }.to_json

    expect { Turk::ApiResponse.json!(response_for(body, status: 422)) }
      .to raise_error(Turk::MissingReponse, /422: Input households_number_of_apartments_future does not exist/)
  end

end
