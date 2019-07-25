actions
login

	| response |
	response := self togglAPI authenticateWithUsername: self account userName Password: self account userPassword.
	self authenticated: response code = 200.
	self authenticated ifTrue: [ 
		self 
			updateLocalAccountWith: response;
			updateTimeEntries;
			synchronize].
	self changed: #authenticated


	
	