instance creation
newWithToggl: aTogglClient andAccount: aTogglAccount
	
	^ self new 
		togglClient: aTogglClient;
		account: aTogglAccount;
		yourself.
	