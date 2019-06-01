parsing
jsonFromResponse: aResponse
	^ Json readFrom: aResponse content utf8ToSqueak readStream