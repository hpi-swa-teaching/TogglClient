tests
testLogout
	
	| response |
	client account userName: self validAccountUser.
	client account userPassword: self validAccountPassword.
	client login.
	
	self assert: client authenticated.
	response := client togglAPI logout.
	self assert: response isSuccess