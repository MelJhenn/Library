public
handleRequest: request
	^request method = #POST
		ifTrue: [ self handleNewBookRequest: request]
		ifFalse: [ super handleRequest: request]