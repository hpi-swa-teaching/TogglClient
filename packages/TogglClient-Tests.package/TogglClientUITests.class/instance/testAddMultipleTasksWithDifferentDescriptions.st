running
testAddMultipleTasksWithDifferentDescriptions

	| text |
	
	text := Text fromString: 'test1'.
	togglClient currentText: text.
	togglClient startTimer.
	togglClient stopTimerAndAddTask.
	
	text at: 5 put: '2' asCharacter.
	togglClient currentText: text.
	togglClient startTimer.
	togglClient stopTimerAndAddTask.


	self assert: 'test2' equals: togglClient taskList first description.
	self assert: 'test1' equals: togglClient taskList second description