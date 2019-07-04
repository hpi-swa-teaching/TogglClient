actions
actionSynchronize

	self authenticated ifTrue: [
		self 
			pushLocalTimeEntries;
			pullTimeEntries]