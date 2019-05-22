toolbuilder
buildInputFieldWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		editText: #currentText:;
		getText: #currentText;
		setText: #currentText:;
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0;
			rightFraction: 0.6 offset: 0;
			bottomFraction: 0.1 offset: 0);
		yourself