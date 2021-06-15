public
during: block 
	[ 
	self open.
	block value.
	 ] ensure: [ self close ].