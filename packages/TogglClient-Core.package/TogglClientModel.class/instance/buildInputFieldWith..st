accessing
buildInputFieldWith: aBuilder
	
	^ aBuilder pluggableTextSpec new
		model: self;
		frame: (LayoutFrame new
			leftFraction: 0.6 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.6 offset: 0);
		yourself