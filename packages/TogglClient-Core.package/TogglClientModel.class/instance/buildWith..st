accessing
buildWith: aBuilder
	
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Toggl Client';
		extent: 500@400;
		children: {
			self buildPanelWith: aBuilder.
			self buildTaskListWith: aBuilder.
			self buildInputFieldWith: aBuilder.
			self buildTimerWith: aBuilder.
			self buildStartButtonWith: aBuilder.
			self buildStopButtonWith: aBuilder}
		yourself)