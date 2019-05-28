initialize-release
authenticate
	self authenticated: (self getResponseFromEndpoint: 'me') code == 200.
	^ self authenticated