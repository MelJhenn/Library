reading
selectBooks
	| rs |
	rs := db execute: 'select * from book'.
	^ rs rows collect: [ :row | Book new from: row ].