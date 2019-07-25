requests
getResponseFromEndpoint: aString WithUser: aUser Password: aPassword

	^ WebClient new httpGet: self class apiBaseline, aString do: [:request |
				request headerAt: 'Authorization' put: 'Basic ', (aUser, ':', aPassword) base64Encoded]