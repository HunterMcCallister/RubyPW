require "sqlite3"
require "digest"

db = SQLite3::Database.new "values.db"

print "sign up or log in?\n"
print "0 - sign up\n"
print "1 - log in\n"
val = Integer(gets)

if val == 0
	print "username: "
	username = gets
	print "password: "
	password = gets
	rows = db.execute("select * from userInfo WHERE username=?", [username])
	alreadySignedUp = false
	if rows.length == 1 
		print "this username is already taken\n"
		alreadySignedUp = true
	end
	if !alreadySignedUp
		hashedPassword = Digest::SHA256.digest password
		db.execute("INSERT INTO userInfo (username, password) VALUES (?, ?)", [username, hashedPassword])
		print "signed up!\n"
	end	
elsif val == 1
	print "username: "
	username = gets
	print "password: "
	password = gets
	hashedPassword = Digest::SHA256.digest password
	rows = db.execute("select * from userInfo WHERE username=? AND password=?", [username, hashedPassword])
	if rows.length == 1
		print "logged in!\n"
	else
		print "username or password is incorrect\n"
	end
else 
	print "incorrect input, please either type 0 or 1\n"
end
