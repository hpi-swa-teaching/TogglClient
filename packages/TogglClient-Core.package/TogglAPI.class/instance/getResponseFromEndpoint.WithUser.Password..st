accessing
getResponseFromEndpoint: aString WithUser: aUser Password: aPassword
	^ webClient httpGet: self url, aString do: [:request |
				request headerAt: 'Authorization' put: 'Basic ', (aUser, ':', aPassword) base64Encoded].