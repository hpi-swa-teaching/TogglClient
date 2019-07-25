tests
testClientLabelDoesntShowUsernameWhenNotAuthenticated

	client authenticated: false.
	client account userName: 'user@42.de'.
	self assert: false equals: (client clientLabel includesSubString: client account userName)
	