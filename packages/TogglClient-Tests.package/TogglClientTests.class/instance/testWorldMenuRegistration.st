tests
testWorldMenuRegistration

	TheWorldMenu unregisterOpenCommand: 'Toggl Client'.
	self assert: (TheWorldMenu registry anySatisfy: [:element | element first = 'Toggl Client']) not.
	client := TogglClient initialize.
	self assert: (TheWorldMenu registry anySatisfy: [:element | element first = 'Toggl Client'])