toolbuilder
loginLogoutButtonLabel
	
	self authenticated
		ifTrue: [^ #Logout]
		ifFalse: [^ #Login]