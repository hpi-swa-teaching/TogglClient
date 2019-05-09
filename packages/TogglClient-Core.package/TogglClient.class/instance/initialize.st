initialisation
initialize

	super initialize.
	TheWorldMenu registerOpenCommand: {'TogglClient'. {self. #open}}.
	self taskList: OrderedCollection new.
	self timer: Stopwatch new.

