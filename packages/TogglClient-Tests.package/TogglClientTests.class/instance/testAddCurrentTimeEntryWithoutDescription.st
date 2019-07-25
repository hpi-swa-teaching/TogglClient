tests-toolbuilder
testAddCurrentTimeEntryWithoutDescription
	
	client 
		currentText: String empty;
		addCurrentTimeEntry.
	self assert: 'no description' equals: client timeEntryList first description