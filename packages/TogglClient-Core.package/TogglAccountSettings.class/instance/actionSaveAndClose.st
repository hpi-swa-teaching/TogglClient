actions
actionSaveAndClose

	self account userName: self userName.
	self account userPassword: self userPassword.
	self togglClient login.
	self changed: #close