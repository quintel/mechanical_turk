# This tiny script makes it easier to generate many similar gqueries.
# The converters on which the queries work can be specified in an input file.
# The attributes of the converters that you want to be queried
# are still hard coded.
require 'fileutils'
require 'CSV'

# User IO
if ARGV.length != 1 then
  puts "Give as argument a file with one converter name
  and one input key per line, separated by a comma."
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
  converter, inputStatement = row
  puts converter + " " + inputStatement
  converter.strip!
  inputStatement.strip!
  converters.push([converter, inputStatement])
end

# Read file and store contents in array
#fileNames = IO.readlines(input_file)

# Specify attributes to query
attributes = ["full_load_hours", "number_of_units"]

# Ranges of expected values
# delta and value for full_load_hours and number_of_units variable
values = {"full_load_hours" => [4380.0, 4380.0], #(checks if 0 < FLH < 8760)
  "number_of_units" => [10.0,7349500.0]} # (checks if NOU == 7349500)

# Main loop
attributes.each do|a|

  converters.each do|c|

    # Dynamically create fileNmame
    fileName = "turk_#{a}_of_#{c[0]}"

    # Open file
    outFile = File.new(fileName+".gql", "w")
    if outFile
      outFile.syswrite("# Return #{a} of #{c[0]}

- unit =

V(#{c[0]}, #{a})

")
      else
       puts "ERROR: Unable to open file " + outFile + "!"
    end

    # Write rspec code to screen
    range = values[a]
    puts "it \"#{a} of #{c[0]} should be within #{range[0]} of #{range[1]}\" do"
    puts "  @scenario.#{c[1]} = 100 #%"
    puts "  @scenario.#{fileName}.value.should be_within(#{range[0]}).of(#{range[1]})"
    puts "end"
    puts ""

  end
end

