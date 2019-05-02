accessing
buildTimerWith: aBuilder
	
	^ aBuilder pluggableTextSpec new
		getText: #timerDuration;
		setText: #timerDuration:;
		model: self;
		frame: (LayoutFrame new
			leftFraction: 0.7 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 0.9 offset: 0;
			bottomFraction: 0.1 offset: 0);
		
		yourself