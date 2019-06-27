tests
testWorldMenuRegistration

	TheWorldMenu unregisterOpenCommand: 'Toggl Client'.
	self assert: false equals: (TheWorldMenu registry anySatisfy: [:element | element first = 'Toggl Client']).
	client := TogglClient initialize.
	self assert: true equals: (TheWorldMenu registry anySatisfy: [:element | element first = 'Toggl Client'])