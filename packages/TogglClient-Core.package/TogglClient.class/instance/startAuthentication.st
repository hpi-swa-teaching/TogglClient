actions
startAuthentication

	| response client |
	client := WebClient new. 
	response := client httpGet: 'https://www.toggl.com/api/v8/me' do: [:request |
				request headerAt: 'Authorization' put: 'Basic ', (self account userName, ':', self account userPassword) base64Encoded].
			
	self authenticated: response code = 200.
	self changed: #getAuthenticationColor.

	
	