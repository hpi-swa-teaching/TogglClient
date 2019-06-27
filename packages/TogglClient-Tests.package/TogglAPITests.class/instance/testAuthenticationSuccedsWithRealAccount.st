tests
testAuthenticationSuccedsWithRealAccount

	client account userName: 'yugizeto@googlemail.com'.
	client account userPassword: 'thisisasqueaktest123'.
	client startAuthentication.
	self assert: true equals: client authenticated