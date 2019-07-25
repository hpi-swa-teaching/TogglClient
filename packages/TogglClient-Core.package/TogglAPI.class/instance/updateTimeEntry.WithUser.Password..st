requests
updateTimeEntry: aTimeEntry WithUser: aUser Password: aPassword

	| json |
	json := TogglJsonParser createJsonFromTimeEntry: aTimeEntry.
	^ WebClient new 
		httpPut: self class apiBaseline, self class timeEntryEndpoint, '/', aTimeEntry id content: json type: 'application/json' do: [:request |
				request headerAt: 'Authorization' put: 'Basic ', (aUser, ':', aPassword) base64Encoded]