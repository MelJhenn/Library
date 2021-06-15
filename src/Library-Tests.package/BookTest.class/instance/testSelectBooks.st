tests
testSelectBooks
	| b1 books liteDB |
	liteDB := SQLite3Connection on: ':memory:'.
	db:= LibraryDB new.
	db database: liteDB.
	db during: [
		db createTables.
		b1:= Book new.
		b1 title: 'Caos'; author: 'Magali Tajes'; genres: 'non-fiction'; description: 'non fiction'. 
		db write: b1.
		b1 title: 'Emma'; author: 'Jane Austen'; genres: 'classic'; description: 'classic'. 
		db write: b1.
		books:= db selectBooks. 
		self assert: books size equals: 2.
		self assert: books first class equals: Book.
		self assert: books first title equals: 'Caos'.
		self assert: books second title equals: 'Emma'.
		].
	
	
	
