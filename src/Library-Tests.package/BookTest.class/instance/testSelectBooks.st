tests
testSelectBooks
	| b1 books |
	db createTables.
	b1:= Book new.
	b1 title: 'Caos'; author: 'Magali Tajes'; description: 'non fiction'. 
	db write: b1.
	b1 title: 'Emma'; author: 'Jane Austen'; description: 'classic'. 
	db write: b1.
	books:= db selectBooks. 
	self assert: books size equals: 2.
	self assert: books first class equals: Book.
	self assert: books first title equals: 'Caos'.
	self assert: books second title equals: 'Emma'.
	
	
