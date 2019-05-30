actions
startAuthentication

	| response client |
	client := WebClient new. 
	response := client httpGet: 'https://www.toggl.com/api/v8/me' do: [:request |
				request headerAt: 'Authorization' put: 'Basic ', (self account userName, ':', self account userPassword) base64Encoded].
			
	response code = 200 
		ifTrue: [self authenticated: true.
				self changed: #getAuthenticationColor.]
		ifFalse: [self authenticated: false.
				self changed: #getAuthenticationColor.]