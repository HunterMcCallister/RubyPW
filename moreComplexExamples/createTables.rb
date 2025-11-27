require "sqlite3"

db = SQLite3::Database.new "values.db"

db.execute("create table userInfo (username varchar(50), password varchar(50))")
