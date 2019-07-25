tests
testActionSaveAndClose

	| user password |
	user := 'thisisauser'.
	password := 'thisisapassword'.
	
	accountSettings actionUserName: user.
	accountSettings actionUserPassword: password.
	accountSettings actionSaveAndClose.
	self assert: user equals: account userName.
	self assert: password equals: account userPassword