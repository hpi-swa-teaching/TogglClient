initialisation
initialize

	super initialize.
	TheWorldMenu registerOpenCommand: {'Toggl Client'. {self. #open}}.
	self taskList: OrderedCollection new.
	self timer: Stopwatch new.

