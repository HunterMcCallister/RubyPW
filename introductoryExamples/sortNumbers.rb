print "what are the numbers that you want sorted?\n"
values = gets.split(' ')
values = values.sort 
print "here are the numbers sorted: "
for value in values do
	print value, " "
end
print "\n"
