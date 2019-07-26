tests
testTimeEntryEqualsItself

	self assert: (finishedTimeEntry = finishedTimeEntry).
	self assert: finishedTimeEntry = finishedTimeEntry copy