actions
restartTimeEntry
	
	self stopTimerAndAddTimeEntry.
	self currentText: self currentSelection description.
	self startTimer.
	self changed: #timerIsRunning.

