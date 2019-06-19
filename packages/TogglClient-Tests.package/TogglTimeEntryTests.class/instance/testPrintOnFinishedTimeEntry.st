tests
testPrintOnFinishedTimeEntry

	| stream expected |
	stream := ReadWriteStream with: #().
	expected := ReadWriteStream with: #().
	testTimeEntry printOn: stream.
	expected nextPutAll: 'im a test	04:03:33	1 January 2019	13:37:00	1 January 2019	17:40:33'.
	self assert: stream equals: expected.