tests
testPushLocalTimeEntriesSychronizesLocalTimeEntries

	| account client|
	account := TogglAccount new userName: 'yugizeto@googlemail.com'; userPassword: 'thisisasqueaktest123'.
	client := TogglClient new account: account.
	client startTimer.
	client addCurrentTimeEntry.
	self assert: (client timeEntryList first isSynchronized not).
	client actionSynchronize.
	self assert: (client timeEntryList first isSynchronized).
