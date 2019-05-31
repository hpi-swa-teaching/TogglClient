accessing
authenticateWIthUser: aUsername Password: aPassword

	self getResponseFromEndpoint: 'me' WithUser: aUsername Password: aPassword.