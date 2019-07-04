actions
actionSaveAndClose

	self userName ifNotNil: [self account userName: self userName].
	self userPassword ifNotNil: [self account userPassword: self userPassword].
	self togglClient login.
	self changed: #close