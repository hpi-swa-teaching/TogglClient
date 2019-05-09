toolbuilder
buildStopButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Stop';
		action: #stopTimerAndAddTask;
		frame: (LayoutFrame new
			leftFraction: 0.9 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.1 offset: 0);
		yourself