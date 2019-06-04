actions
startTimer 

	self timer isActive ifFalse: [
		self timer activate.
		self startDateAndTime: DateAndTime now.
	]
	