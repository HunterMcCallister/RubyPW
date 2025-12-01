#!/usr/bin/env ruby

# Step 1: Grab the first and second arguments
search_term = ARGV[0]
filename = ARGV[1]

# Step 2: Remove quotation marks from the beginning/end of first argument
search_term = search_term.chomp('"')

# Step 3: Create regex variable
re = /#{search_term}/

# Step 4: Make sure the second argument is a valid file
unless File.exist?(filename) && File.file?(filename)
  puts "Error: '#{filename}' is not a valid file."
  exit(1)
end

# Step 5: Create a new File object
file = File.open(filename, 'r')

#For Step 8: List to store matching lines
matching_lines = []

# Step 6: Read each line of the file until EOF is reached
file.each_line do |line|
  # Step 7: Use regex to see if term is in the file line
  # Step 8: If term is in line, add it to the list
  if re.match?(line)
    matching_lines.push(line)
  end
end

file.close

# Step 9: Print the list of lines that contain the term 
puts "matching lines in the file:"

matching_lines.each do |matching_line|
  puts matching_line
end