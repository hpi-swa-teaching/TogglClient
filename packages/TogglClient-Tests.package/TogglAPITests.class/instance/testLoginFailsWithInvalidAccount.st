tests
testLoginFailsWithInvalidAccount

	client account userName: String empty.
	client account userPassword: String empty.
	client login.
	self assert: client authenticated not