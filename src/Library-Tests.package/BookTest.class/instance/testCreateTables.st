tests
testCreateTables
	| tables |	
	db createTables.
	tables := db tableNames.
	self assert: tables size equals: 1.
	self assert: tables first equals: 'book'