actions
stopTimerAndAddTimeEntry

	self timerIsRunning ifTrue:[
		self
			stopTimer;
			addCurrentTimeEntry;
			currentText: String empty]

	