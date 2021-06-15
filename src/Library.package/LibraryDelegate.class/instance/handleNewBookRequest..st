as yet unclassified
handleNewBookRequest: request
	| newBook db lite |
	newBook := Book new.
	newBook 
		title: (request entity at: 'title'); 
		author: (request entity at: 'author');
		genres: (request entity at: 'genres');
		description: (request entity at: 'description').
	db:= LibraryDB new.
	lite:= SQLite3Connection on: 'Library.db'.
	db database: lite.
	db during: [ db write: newBook ].
	^ZnResponse ok: (ZnEntity text: 'A new book has been created').