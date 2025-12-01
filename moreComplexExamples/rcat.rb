filename = ARGF.argv[0]

if File.file?(filename) 
	fileText = IO.read(filename)
else 
	print "file does not exist\n"
end

print fileText
