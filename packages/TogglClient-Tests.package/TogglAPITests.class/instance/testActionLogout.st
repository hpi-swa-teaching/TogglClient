tests
testActionLogout 

	client authenticated: true.
	client actionLoginLogout.
	self assert: client authenticated not.
	self assert: client timeEntryList isEmpty