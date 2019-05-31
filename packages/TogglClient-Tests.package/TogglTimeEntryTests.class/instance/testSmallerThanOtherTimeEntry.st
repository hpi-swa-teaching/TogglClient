as yet unclassified
testSmallerThanOtherTimeEntry

	self assert: true equals: testTimeEntry < anotherTimeEntry.
	self assert: false equals: testTimeEntry < testTimeEntry copy.