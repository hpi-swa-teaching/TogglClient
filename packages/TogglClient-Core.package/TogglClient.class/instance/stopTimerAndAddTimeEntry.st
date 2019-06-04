actions
stopTimerAndAddTimeEntry

	self timer isActive ifTrue:[
		self
			stopTimer;
			addCurrentTimeEntry;
			currentText: String empty]

	