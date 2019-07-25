tests
testAuthenticationFailsWithEmptyAccount

	client account userName: ''.
	client account userPassword: ''.
	client login.
	self assert: false equals: client authenticated