actions
startTimer 

	self timer isActive ifFalse: [
		self timer activate.
		self startTime: Time now]
	