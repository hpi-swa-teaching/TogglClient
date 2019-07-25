tests
testPushLocalTimeEntriesSychronizesLocalTimeEntries

	| account |
	account := TogglAccount new 
				userName: self validAccountUser; 
				userPassword: self validAccountPassword;
				yourself.
	client 
		account: account;
	 	startTimer;
		login;
		addCurrentTimeEntry.
	self assert: client timeEntryList first isSynchronized not.
	client actionSynchronize.
	self assert: client timeEntryList first isSynchronized