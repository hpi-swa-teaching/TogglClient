initialize-release
initialize

	self userName: (TogglAccount defaultName ifNil: [String empty]).
	self userPassword: (TogglAccount defaultPassword ifNil: [String empty]).