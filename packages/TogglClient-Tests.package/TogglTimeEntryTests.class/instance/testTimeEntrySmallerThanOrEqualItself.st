tests
testTimeEntrySmallerThanOrEqualItself

	self assert: finishedTimeEntry <= finishedTimeEntry copy.
	self assert: finishedTimeEntry <= finishedTimeEntry 