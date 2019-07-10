toolbuilder
buildWith: aBuilder
	
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #clientLabel;
		extent: 500@400;
		children: {
			self buildPanelWith: aBuilder.
			self buildTimeEntryListWith: aBuilder.
			self buildInputFieldWith: aBuilder.
			self buildTimerWith: aBuilder.
			self buildStartStopButtonWith: aBuilder.
			self buildButtonBarWith: aBuilder }
		yourself)