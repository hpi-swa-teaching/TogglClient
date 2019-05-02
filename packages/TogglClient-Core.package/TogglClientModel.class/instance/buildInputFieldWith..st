accessing
buildInputFieldWith: aBuilder
	
	^ aBuilder pluggableTextSpec new
		model: self;
		editText: #currentText:;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 0.8 offset: 0;
			bottomFraction: 0.1 offset: 0);
		yourself