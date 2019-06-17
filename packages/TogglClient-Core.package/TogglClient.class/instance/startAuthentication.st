actions
startAuthentication

	self authenticated: (self togglAPI authenticateWIthUsername: self account userName Password: self account userPassword).
	self changed: #getAuthenticationColor.

	
	