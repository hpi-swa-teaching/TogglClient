as yet unclassified
testAuthenticationFailsWithEmptyAccount

	client account userName: ''.
	client account userPassword: ''.
	client startAuthentication.
	self assert: false equals: client authenticated.