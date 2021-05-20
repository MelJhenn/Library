writing
writeOn: db 
	|s|
	db  basicExecute: 'begin'.
	s:= db prepare: 'insert into book values (?, ?, ?) '.
	s at: 1 putString: title;
	 at: 2 putString: author ;
	 at: 3 putString: description.
	s step. s finalize.
	db basicExecute: 'commit'.
	
	
	
	
	