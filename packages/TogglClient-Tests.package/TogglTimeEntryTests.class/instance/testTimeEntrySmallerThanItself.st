tests
testTimeEntrySmallerThanItself

	self assert: (finishedTimeEntry < finishedTimeEntry copy) not.
	self assert: (finishedTimeEntry < finishedTimeEntry) not