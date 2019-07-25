tests
testLoginFailsWithInvalidAccount

	client account userName: ''.
	client account userPassword: ''.
	client login.
	self assert: client authenticated not