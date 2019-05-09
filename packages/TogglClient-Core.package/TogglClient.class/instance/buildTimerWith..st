toolbuilder
buildTimerWith: aBuilder
	
	^ aBuilder pluggableTextSpec new
		getText: #timerDuration;
		model: self;
		frame: (LayoutFrame new
			leftFraction: 0.6 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 0.8 offset: 0;
			bottomFraction: 0.1 offset: 0);
		
		yourself