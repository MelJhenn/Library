accessing
start
	<script: 'self new start'> 
	self stop.
	(server:= ZnServer startOn: 4000)
		delegate: (
      		LibraryDelegate new
				directory: '.\pharo-local\iceberg\Library\admin\' asFileReference;
				yourself); 
		authenticator: (ZnBasicAuthenticator username: 'admin' password: 'admin').
