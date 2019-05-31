tests
testWorldMenuRegistration

	self assert: true equals: (TheWorldMenu registry anySatisfy: [:element | element first = 'Toggl Client'])