tests
testLoginLogout
	| response |
	
	response := client togglAPI
		authenticateWithUsername: 'yugizeto@googlemail.com' 
		Password:  'thisisasqueaktest123'.
	
	self assert: response code = 200.
	response := client togglAPI logout.
	self assert: response code = 200.