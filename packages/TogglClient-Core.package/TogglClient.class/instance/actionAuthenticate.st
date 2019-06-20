actions
actionAuthenticate
	self authenticated
		ifTrue: []
		ifFalse: [TogglAccountSettings openWithToggl: self andAccount: self account]