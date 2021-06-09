accessing
stop
	<script: 'self new stop'> 
	server ifNotNil: [ 
		server stop.
		server:= nil.
		 ] 