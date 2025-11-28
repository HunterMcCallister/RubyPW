#!/usr/bin/env ruby

# Step 1: Grab the first and second arguments (done by someone else)
search_term = ARGV[0]
filename = ARGV[1]

# Step 2: Remove quotation marks from the beginning/end of first argument (done by someone else)
# TODO: Strip quotes from search_term

# Step 3: Create regex variable (Ellis)
# TODO: Create regex from search_term

# Step 4: Make sure the second argument is a valid file (Gabriel)
unless File.exist?(filename) && File.file?(filename)
  puts "Error: '#{filename}' is not a valid file."
  exit(1)
end

# Step 5: Create a new File object (done by someone else)
file = File.open(filename, 'r')

# Step 8: List to store matching lines (Ellis)
matching_lines = []

# Step 6: Read each line of the file until EOF is reached (Gabriel)
file.each_line do |line|
  # Step 7: Use regex to see if term is in the file line (Ellis)
  # TODO: Add regex matching logic here
  
  # Step 8: If term is in line, add it to the list (Ellis)
  # TODO: Add line to matching_lines if it matches
end

file.close

# Step 9: Print the list of lines that contain the term (done by someone else)
# TODO: Print matching_lines
