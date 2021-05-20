initialization
setUp 
	|liteDB|
	super setUp.
	liteDB := SQLite3Connection on: ':memory:'.
	db:= LibraryDB new.
	db database: liteDB.
	db open.
	
