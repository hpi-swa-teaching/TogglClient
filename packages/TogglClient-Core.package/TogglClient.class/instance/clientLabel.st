toolbuilder
clientLabel

	| label |
	label := 'Toggl Client '.
	self authenticated ifTrue: [label := label, self account userName].
	
	self isSynchronized 
		ifTrue: [label := label, ' (synchronized)']
		ifFalse: [label := label, ' (not synchronized)'].
	
	^ label
	