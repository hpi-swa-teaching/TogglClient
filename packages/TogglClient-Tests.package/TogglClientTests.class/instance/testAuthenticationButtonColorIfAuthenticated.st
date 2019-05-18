tests-building
testAuthenticationButtonColorIfAuthenticated

	client authenticated: true.
	self assert: Color clover equals: client getAuthenticationColor.