accessing
buildStartButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Start';
		action: #startTimer;
		frame: (LayoutFrame new
			leftFraction: 0.8 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 0.9 offset: 0;
			bottomFraction: 0.1 offset: 0);
		yourself