tests
testLoginSucceedsWithValidAccount

	client account userName: self validAccountUser.
	client account userPassword: self validAccountPassword.
	client login.
	self assert: client authenticated