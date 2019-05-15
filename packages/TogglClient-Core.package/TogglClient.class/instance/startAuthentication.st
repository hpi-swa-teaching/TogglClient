as yet unclassified
startAuthentication

	| JsonObject response client |
	client := WebClient new . 
	response := client httpGet: 'https://www.toggl.com/api/v8/me' do: [:request |
				request headerAt: 'Authorization' put: 'Basic ', (TogglAccount defaultName, ':', TogglAccount defaultPassword) base64Encoded].
	
	Halt.
	JsonObject := (Json readFrom: response content utf8ToSqueak readStream).
	testContent := JsonObject
	