toolbuilder
buildWith: aBuilder
	
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Toggl Client';
		extent: 500@400;
		children: {
			self buildPanelWith: aBuilder.
			self buildTimeEntryListWith: aBuilder.
			self buildInputFieldWith: aBuilder.
			self buildTimerWith: aBuilder.
			self buildStartButtonWith: aBuilder.
			self buildStopButtonWith: aBuilder.
			self buildButtonBarWith: aBuilder }
		yourself)