# This script (executed in the etsource/inputs dir) looks for
# input statements (.yml) that change converters (listed in input file).
require 'fileutils'
require 'CSV'

# User IO
if ARGV.length != 1 then
  puts "Give as argument a file with one converter name per line"
  exit
else
  puts "Finding inputs for converters in file: " + ARGV[0]
end

#Open input file
input_file = ARGV[0]

# Read file and store contents in array
converters = IO.readlines(input_file)

#Open output file
outFile = File.new("inputs.csv", "w")

# Loop over converters
converters.each do|c|

  # Write name to stdout
  puts "Converter: " + c

  # Run a 'git grep' on the converter
  grep_result = %x{git grep #{c}} 

  # 
  arr = grep_result.split("\n")
  arr2 = arr.reject{|string| string.include?("DEPRECATED")}

  #arr3 = arr2.select{|string| string.include?(".yml")}
  arr4 = arr2.select{|string| string.include?("_share")}
  arr5 = arr2.select{|string| string.include?("number_of")}
  arr6 = arr4+arr5
  selection = arr6.select{|string| string.include?("_")}[0]

  if selection.split("/").length > 1
    sub_selection = selection.split("/")[1].split(".")[0]
  else
    sub_selection = selection.split(".")[0]
  end

  # Write result to stdout
  puts " -- Input statement: " + sub_selection + ".yml"

  outFile.syswrite("#{c.strip},#{sub_selection}\n")

end

