public
handleRequest: request
	request requestLine uri firstPathSegment='search' ifTrue: [
		^self handleSearchRequest: request.	
	].
	^request method = #POST
		ifTrue: [ self handleNewBookRequest: request]
		ifFalse: [ super handleRequest: request]