accessing
buildAddButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Hallo';
		action: #addCurrentTask;
		frame: (LayoutFrame new
			leftFraction: 0.6 offset: 0;
			topFraction: 0.6 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0);
		yourself