accessing
getResponseFromEndpoint: aString
	^ self webClient httpGet: self url, aString do: [:request |
				request headerAt: 'Authorization' put: 'Basic ', (TogglAccount defaultName, ':', TogglAccount defaultPassword) base64Encoded].