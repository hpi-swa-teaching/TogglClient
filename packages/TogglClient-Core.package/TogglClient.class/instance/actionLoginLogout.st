actions
actionLoginLogout

	self authenticated
		ifTrue: [self logoutAndCleanTimeEntryList]
		ifFalse: [self openLoginDialog].
	self changed: #clientLabel