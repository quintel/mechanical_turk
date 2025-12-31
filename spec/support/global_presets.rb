# Initialize collections declared in preset_scenarios.yml IMMEDIATELY when file is loaded
$preset_collections = Turk::PresetCollection.all

RSpec.configure do |config|
  # Runs once before the whole test suite
  config.before(:suite) do
    # Extract queries from specs declared in query_sources.yml config
    queries = Turk::QueryExtractor.all

    $preset_collections.each do |scenario|
      scenario.track(queries)
    end
  end
end
