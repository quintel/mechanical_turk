RSpec.configure do |config|
  extract_time = 0.0
  caching_time = 0.0

  # Runs once before the whole test suite
  config.before(:suite) do
    # Extract queries from specs declared in query_sources.yml config
    start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    queries = Turk::QueryExtractor.all
    extract_time = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start

    start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    Turk::PresetCollection.all.each do |scenario|
      scenario.track(queries)
      scenario.refresh!
    end
    caching_time = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start
  end

  # Print the preset query extraction/caching times (after the whole test suite)
  config.after(:suite) do
    printf "\n%.3fs  LOAD PRESETS:\n", extract_time + caching_time
    printf "%6.3fs  Query extraction\n", extract_time
    printf "%6.3fs  Query caching\n", caching_time
  end
end
