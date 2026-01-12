RSpec.configure do |config|
  # Runs once before the whole test suite
  config.before(:suite) do
    # Extract queries from specs declared in query_sources.yml config
    queries = Turk::QueryExtractor.all

    Turk::PresetCollection.all.each do |scenario|
      scenario.track(queries)
    end
  end
end
