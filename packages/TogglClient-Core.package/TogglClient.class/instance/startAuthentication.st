as yet unclassified
startAuthentication

	| response client JsonObject |
	client := WebClient new. 
	response := client httpGet: 'https://www.toggl.com/api/v8/me' do: [:request |
				request headerAt: 'Authorization' put: 'Basic ', (self account userName, ':', self account userPassword) base64Encoded].
			
	Transcript show: response code.
	response code = 200 
		ifTrue: [self authenticated: true.
				self changed: #getAuthenticationColor.]
		ifFalse: [self authenticated: false.
				self changed: #getAuthenticationColor.]
	
	"JsonObject := (Json readFrom: response content utf8ToSqueak readStream)." "doesnt work"
	
	