actions
startAuthentication
	| response json|
	response := self togglAPI authenticateWithUsername: self account userName Password: self account userPassword.
	json := TogglJsonParser jsonFromResponse: response.
	self account defaultWid: ((json at: 'data') at: 'default_wid').
	self authenticated: response code = 200.
	self changed: #getAuthenticationColor.

	
	