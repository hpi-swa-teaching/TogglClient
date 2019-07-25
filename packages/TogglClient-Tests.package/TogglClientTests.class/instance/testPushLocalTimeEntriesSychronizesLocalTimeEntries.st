tests
testPushLocalTimeEntriesSychronizesLocalTimeEntries

	| account |
	account := TogglAccount new 
				userName: 'yugizeto@googlemail.com'; 
				userPassword: 'thisisasqueaktest123';
				yourself.
	client account: account.
	client startTimer.
	client login.
	client addCurrentTimeEntry.
	self assert: (client timeEntryList first isSynchronized not).
	client actionSynchronize.
	self assert: (client timeEntryList first isSynchronized)
