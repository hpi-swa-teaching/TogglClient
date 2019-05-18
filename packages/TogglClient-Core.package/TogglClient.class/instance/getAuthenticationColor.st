initialisation
getAuthenticationColor

	self authenticated 
		ifTrue: [^ Color clover.]
		ifFalse: [^ Color red. ]