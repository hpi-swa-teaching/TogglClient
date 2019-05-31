accessing
getResponseFromEndpoint: aString WithUser: aUser Password: aPassword
	^ WebClient new httpGet: self url, aString do: [:request |
				request headerAt: 'Authorization' put: 'Basic ', (aUser, ':', aPassword) base64Encoded].