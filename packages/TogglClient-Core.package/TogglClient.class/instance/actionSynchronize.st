actions
actionSynchronize

	self authenticated ifTrue: [
		self pushLocalTimeEntries.
		self pullTimeEntries]