# This tiny script makes it easier to generate many similar gqueries.
# The converters on which the queries work can be specified in an input file.
# The attributes of the converters that you want to be queried are still hard coded.
require 'fileutils'
require 'CSV'

# User IO
if ARGV.length != 1 then
    puts "Give as argument a file with one converter name and one imput key per line, separated by a comma."
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
  converter.strip!
  inputStatement.strip!
  converters.push([converter, inputStatement])
end

# Read file and store contents in array
#fileNames = IO.readlines(input_file)

# Specify attributes to query
attributes = ["full_load_hours", "number_of_units"]
values = {"full_load_hours" => "7349500.0,10.0", "number_of_units" => "4380.0, 4380.0"}

# Main loop
converters.each do|c|

	attributes.each do|a|

 		# Dynamically create fileNmame
		fileName = "turk_#{a}_of_#{c[0]}.gql"

		# Open file
			outFile = File.new(fileName, "w")
		if outFile
		  	outFile.syswrite("# Return #{a} of #{c[0]}

- unit =

V(#{c[0]}, #{a})

")
			else
	 		puts "ERROR: Unable to open file " + outFile + "!"
		end

		# Write rspec code to screen
		puts "it \"turk_#{a}_of_#{c[0]}\" do"
    puts "	@scenario.#{c[1]} = 100 #%"
    range = values[a]
    puts "	the_future.should be_within(#{range})"
    puts "end"
    puts ""

	end
end

