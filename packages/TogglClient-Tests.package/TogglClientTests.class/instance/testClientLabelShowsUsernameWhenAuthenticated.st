tests
testClientLabelShowsUsernameWhenAuthenticated

	client authenticated: true.
	client account userName: 'user@42.de'.
	self assert: (client clientLabel includesSubString: client account userName)
	