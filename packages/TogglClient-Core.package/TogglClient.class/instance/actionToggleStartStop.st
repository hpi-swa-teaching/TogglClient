toolbuilder
actionToggleStartStop

	self timerIsRunning
		ifTrue: [self stopTimerAndAddTimeEntry]
	      ifFalse: [self startTimer].
      self changed: #timerIsRunning