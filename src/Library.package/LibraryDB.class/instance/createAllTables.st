as yet unclassified
createAllTables
	<script:'self new createAllTables' >
	| db1 lite b1 |
	lite:= SQLite3Connection on: 'Library.db'.
	db1 := self class new.
	db1  database: lite.
	db1  open.
	db1 createTables.
	b1:= Book new.
	b1 title: 'Caos'; author: 'Magali Tajes'; description: 'Non fiction'.
	db1 write: b1. 
	b1 title: 'Emma'; author: 'Jane Austen'; description: 'Classic'.
	db1 write: b1.
	b1 title: 'Heart Berries'; author: 'Terese Marie Mailhot'; description: 'Memoir'.
	db1 write: b1.
	db1 close.
	