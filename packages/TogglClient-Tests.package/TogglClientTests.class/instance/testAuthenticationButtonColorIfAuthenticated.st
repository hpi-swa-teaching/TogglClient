tests-building
testAuthenticationButtonColorIfAuthenticated

	client authenticated: true.
	self assert: (Color green) equals: (client getAuthenticationColor).