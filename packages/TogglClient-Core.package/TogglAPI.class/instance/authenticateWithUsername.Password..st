requests
authenticateWithUsername: aUsername Password: aPassword

	| response |
	response := self getResponseFromEndpoint: self class authenticateEndpoint WithUser: aUsername Password: aPassword.
	^ response