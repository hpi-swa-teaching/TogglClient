tests
testAuthenticationFailsWithInvalidAccount

	| response |
	response := client togglAPI
		authenticateWithUsername: String empty
		Password: String empty.	
	self assert: response isSuccess not

