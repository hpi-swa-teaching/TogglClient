accessing
buildTimerWith: aBuilder
	
	^ aBuilder pluggableTextSpec new
		getText: #timerDuration;
		setText: #timerDuration:;
		model: self;
		frame: (LayoutFrame new
			leftFraction: 0.9 offset: 0;
			topFraction: 0.9 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0);
		
		yourself