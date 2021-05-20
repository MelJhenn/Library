public
numbersOfRows: aString 
	| rs rows |
	rs:= db execute: 'select * from ', aString.
	rows:= rs rows.
	^rows size.
	  