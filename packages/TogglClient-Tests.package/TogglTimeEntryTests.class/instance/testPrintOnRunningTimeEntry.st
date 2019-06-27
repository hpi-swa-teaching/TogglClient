tests
testPrintOnRunningTimeEntry

	| stream expected |
	stream := ReadWriteStream with: #().
	expected := ReadWriteStream with: #().
	anotherTimeEntry printOn: stream.
	expected nextPutAll: 'me too		1 January 2019	14:42:00'.
	self assert: stream equals: expected