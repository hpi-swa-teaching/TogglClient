toolbuilder
buildPanelWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 0.5 offset: 0;
			bottomFraction: 1 offset: 0;
			yourself);
		yourself