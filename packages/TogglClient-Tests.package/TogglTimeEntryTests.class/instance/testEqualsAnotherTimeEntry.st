as yet unclassified
testEqualsAnotherTimeEntry

	self assert: false equals: testTimeEntry = anotherTimeEntry.
	self assert: true equals: testTimeEntry = testTimeEntry copy.