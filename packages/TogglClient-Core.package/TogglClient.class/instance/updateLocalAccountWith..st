actions
updateLocalAccountWith: aResponse

	| json |
	json := TogglJsonParser jsonFromResponse: aResponse.
	self account defaultWid: ((json at: 'data') at: 'default_wid')