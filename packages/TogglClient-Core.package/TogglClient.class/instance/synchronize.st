actions
synchronize

	self authenticated ifTrue: [
		self 
			pushLocalTimeEntries;
			pullTimeEntries]