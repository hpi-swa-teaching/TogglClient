tests-building
testAuthenticationButtonColorIfNotAuthenticated

	client authenticated: false.
	self assert: Color red equals: client getAuthenticationColor.