print "what is the range of numbers you want printed?\n"
print "starting number: "
startingNumber = gets
print "ending number: "
endingNumber = gets
if startingNumber > endingNumber 
	print "the starting number is greater than the ending number\n"
else 
	for i in startingNumber..endingNumber do
		print i
	end 
end
