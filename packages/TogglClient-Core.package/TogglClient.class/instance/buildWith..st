toolbuilder
buildWith: aBuilder
	
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #clientLabel;
		extent: self defaultExtent;
		children: {
			self buildPanelWith: aBuilder . 
			self buildTimeEntryListWith: aBuilder .
			self buildInputFieldWith: aBuilder .
			self buildTimerWith: aBuilder .
			self buildStartStopButtonWith: aBuilder . 
			self buildButtonBarAndButtonsWith: aBuilder };
		yourself)