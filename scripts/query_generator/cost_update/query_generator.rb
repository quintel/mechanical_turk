# This tiny script makes it easier to generate many similar gqueries.
# The converters on which the queries work can be specified in an input file.
# The attributes of the converters that you want to be queried 
# are still hard coded.
require 'fileutils'
require 'CSV'

# User IO
if ARGV.length != 1 then
  puts "Give as argument a file with one converter name 
  and one total cost per line, separated by a comma."
  exit
else
  puts "Generating gqueries from names in file: " + ARGV[0]
end

#Open file
input_file = ARGV[0]

#First define what we want to replace with what
converters = []
CSV.foreach(input_file) do |row|
  #this is how the columns of the CSV are ordered
  converter, cost = row
  puts converter + " " + cost.to_s
  converter.strip!
  converters.push([converter, cost.to_f])
end

# Specify attributes to query
attributes = ["total_cost"]

# Fraction of expected values
allowed_fraction = 0.05 # 5%

# Main loop
converters.each do|c|

  # Dynamically create fileNmame
  fileName = "total_cost_of_#{c[0]}"

  # Open file
  outFile = File.new(fileName+".gql", "w")
  if outFile
    outFile.syswrite("# Return total cost of #{c[0]}

- unit = euro
- query = V(#{c[0]}, total_costs_per(:plant))

")
    else
     puts "ERROR: Unable to open file " + outFile + "!"
  end

  # Write rspec code to screen
  range = c[1]*allowed_fraction
  puts "it \"total cost of #{c[0]} should be within #{100*allowed_fraction}% of #{c[1]}\" do"
  puts "  @scenario.#{fileName}.value.should be_within(#{range}).of(#{c[1]})"
  puts "end"
  puts ""

end
