requests
authenticateWIthUsername: aUsername Password: aPassword

	| response |
	response := self getResponseFromEndpoint: 'me' WithUser: aUsername Password: aPassword.
	^ response code = 200