as yet unclassified
testSmallerThanOrEqualOtherTimeEntry

	self assert: true equals: testTimeEntry <= anotherTimeEntry.
	self assert: true equals: testTimeEntry <= testTimeEntry copy.