tests
testAuthenticationSuccedsWithRealAccount

	client account userName: 'yugizeto@googlemail.com'.
	client account userPassword: 'thisisasqueaktest123'.
	client login.
	self assert: true equals: client authenticated