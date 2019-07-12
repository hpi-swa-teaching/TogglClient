as yet unclassified
expectedFailures
	
	((Smalltalk classNamed: 'WebClient') httpGet: TogglAPI url) isSuccess
		ifTrue: [ ^#() ]
		ifFalse: [ ^ self class testSelectors ]