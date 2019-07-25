actions
actionLoginLogout

	self authenticated
		ifTrue: [self logout]
		ifFalse: [self openLoginDialog].
	self changed: #clientLabel