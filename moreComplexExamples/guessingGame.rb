value = Integer(rand(100) + 1)
print "guess of what number I am thinking of between 1-100\n"
print "guess: "
guess = Integer(gets)

while 1 
	if guess > value 
		print "the guess is greater than the value\n"
		print "guess: "
		guess = Integer(gets)
	elsif guess < value
		print "the guess is less than the value\n"
		print "guess: "
		guess = Integer(gets)
	else 
		print "the guess is correct. good job!\n"
		break;
	end 
end
