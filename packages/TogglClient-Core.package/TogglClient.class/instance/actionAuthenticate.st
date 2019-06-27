actions
actionAuthenticate

	self authenticated
		ifTrue: [
			self togglAPI logout.
			self timeEntryList removeAll.
			self changed: #timeEntryList.
			self authenticated: false.
			self changed: #authenticated]
		ifFalse: [TogglAccountSettings openWithToggl: self andAccount: self account]