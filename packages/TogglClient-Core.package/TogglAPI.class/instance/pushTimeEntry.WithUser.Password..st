requests
pushTimeEntry: aTimeEntry WithUser: aUser Password: aPassword

	| json |
	json := TogglJsonParser createJsonFromTimeEntry: aTimeEntry.
	^ WebClient new httpPost: self class apiBaseline, self class timeEntryEndpoint 
		content: json type: 'application/json' do: [:request |
			request headerAt: 'Authorization' put: 'Basic ', (aUser, ':', aPassword) base64Encoded]