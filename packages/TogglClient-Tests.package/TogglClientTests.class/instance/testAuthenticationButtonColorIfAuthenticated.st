tests-building
testAuthenticationButtonColorIfAuthenticated

	client authenticated: true.
	self assert: Color paleGreen equals: client getAuthenticationColor.