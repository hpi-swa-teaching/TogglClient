actions
actionSaveAndClose

	userName ifNotNil: [self account userName: userName].
	userPassword ifNotNil: [self account userPassword: userPassword].
	togglClient startAuthentication.
	self changed: #close.