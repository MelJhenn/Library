public
handleRequest: request
	| json lite db1 books |
	lite:= SQLite3Connection on: 'Library.db'.
	db1 := LibraryDB new.
	db1 database: lite.
	db1 open.
	books:= db1 selectBooks.
	db1 close. 
	json:= String streamContents: [ :stream |
		(NeoJSONWriter on: stream) 
			mapAllInstVarsFor: Book; 
			prettyPrint: true;
			nextPut:  books ].
	^ZnResponse ok: (ZnEntity json: json  ).