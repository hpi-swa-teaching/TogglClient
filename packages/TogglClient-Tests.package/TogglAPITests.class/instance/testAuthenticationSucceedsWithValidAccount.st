tests
testAuthenticationSucceedsWithValidAccount

	| response |
	response := client togglAPI
		authenticateWithUsername: self validAccountUser
		Password: self validAccountPassword.	
	self assert: response isSuccess.

