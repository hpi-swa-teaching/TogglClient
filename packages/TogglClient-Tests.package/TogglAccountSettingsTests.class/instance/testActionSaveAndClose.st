tests-building
testActionSaveAndClose

	| user pw |
	user := 'thisisauser'.
	pw := 'thisisapassword'.
	accountSettings actionUserName: user.
	accountSettings actionUserPassword: pw.
	accountSettings actionSaveAndClose.
	self assert: user equals: account userName.
	self assert: pw equals: account userPassword