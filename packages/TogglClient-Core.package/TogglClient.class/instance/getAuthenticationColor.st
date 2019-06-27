initialisation
getAuthenticationColor

	self authenticated 
		ifTrue: [^ Color green]
		ifFalse: [^ Color red]