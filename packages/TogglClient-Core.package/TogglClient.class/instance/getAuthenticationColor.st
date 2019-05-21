initialisation
getAuthenticationColor

	self authenticated 
		ifTrue: [^ Color paleGreen.]
		ifFalse: [^ Color red. ]