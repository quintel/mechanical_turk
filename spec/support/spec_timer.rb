# Record per-spec-file durations and print a sorted summary after the suite.
RSpec.configure do |config|
  file_times = Hash.new(0.0)

  # Wraps around each example group
  config.around(:context) do |example_group|
    # Acumulate the time the whole spec file takes
    start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    example_group.run
    time = Process.clock_gettime(Process::CLOCK_MONOTONIC) - start
    file_times[example_group.metadata[:file_path]] += time
  end

  # Print the run times per spec file (after the whole test suite)
  config.after(:suite) do
    total = file_times.values.inject(0.0, :+)
    printf "\n%.3fs  SPEC TIMES (desc):\n", total
    file_times.sort_by { |_file, dur| -dur }.each do |file, dur|
      printf "%6.3fs  %s\n", dur, file
    end
  end
end
