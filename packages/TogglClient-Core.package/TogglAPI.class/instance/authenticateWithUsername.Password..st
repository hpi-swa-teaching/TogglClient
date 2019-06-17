requests
authenticateWithUsername: aUsername Password: aPassword

	| response |
	response := self getResponseFromEndpoint: 'me' WithUser: aUsername Password: aPassword.
	^ response