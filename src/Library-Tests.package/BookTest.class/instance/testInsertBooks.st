tests
testInsertBooks
	| b1 |
	db createTables.
	b1:= Book new.
	b1 title: 'Caos'; author: 'Magali Tajes'; genres: 'non-fiction'; description: 'non fiction'. 
	db write: b1.
	b1 title: 'Emma'; author: 'Jane Austen'; genres: 'classic'; description: 'classic'. 
	db write: b1.
	self assert: (db numbersOfRows: 'book') equals: 2.
	
	
