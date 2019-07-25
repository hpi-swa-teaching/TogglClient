actions
actionAuthenticate

	self authenticated
		ifTrue: [
			self togglAPI logout.
			self timeEntryList removeAll.
			self 
				authenticated: false;
				changed: #timeEntryList;
				changed: #authenticated]
		ifFalse: [TogglAccountSettings openWithToggl: self andAccount: self account].
	self changed: #clientLabel