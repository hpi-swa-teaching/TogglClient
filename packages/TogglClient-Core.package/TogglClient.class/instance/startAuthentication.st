actions
startAuthentication
	| response |
	response := self togglAPI authenticateWithUsername: self account userName Password: self account userPassword.
	self authenticated: response code = 200.
	self changed: #getAuthenticationColor.
	self authenticated ifTrue: [
		| json |
		json := TogglJsonParser jsonFromResponse: response.
		self account defaultWid: ((json at: 'data') at: 'default_wid')].

	
	