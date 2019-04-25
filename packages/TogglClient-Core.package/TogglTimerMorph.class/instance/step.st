as yet unclassified
step

	| time |
	super step.
	time := String streamContents: [ :stream |
		| t |
		t := Time now subtractTime: self startTime.
		t seconds: t asSeconds. "ignore nanoSeconds"
		t 
			print24: (show24hr == true)
			showSeconds: (showSeconds == true)
			on: stream].
	self contents: time