tests
testGreaterThanOtherTimeEntry

	self assert: false equals: testTimeEntry > anotherTimeEntry.
	self assert: false equals: testTimeEntry > testTimeEntry copy.