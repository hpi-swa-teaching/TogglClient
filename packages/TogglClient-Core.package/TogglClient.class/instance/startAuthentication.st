as yet unclassified
startAuthentication

	| response client JsonObject |
	client := WebClient new . 
	response := client httpGet: 'https://www.toggl.com/api/v8/me' do: [:request |
				request headerAt: 'Authorization' put: 'Basic ', (TogglAccount defaultName, ':', TogglAccount defaultPassword) base64Encoded].
			
	response code.
	"JsonObject := (Json readFrom: response content utf8ToSqueak readStream)." "doesnt work"
	
	