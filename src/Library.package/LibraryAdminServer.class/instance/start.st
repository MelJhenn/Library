accessing
start
	<script: 'self new start'> 
	(server:= ZnServer startOn: 4000)
		delegate: (
      		ZnStaticFileServerDelegate new
				directory: '.\pharo-local\iceberg\Library\admin\' asFileReference;
				yourself); 
		authenticator: (ZnBasicAuthenticator username: 'admin' password: 'admin').
