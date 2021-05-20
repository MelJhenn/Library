running
tearDown
	[ db close ] on: SQLite3Misuse do: [ ].
	super tearDown.
