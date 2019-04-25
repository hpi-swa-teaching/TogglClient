accessing
buildWith: aBuilder
	
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Toggl Client';
		extent: 500@400;
		children: {
			self buildTaskListWith: aBuilder.
			self buildInputFieldWith: aBuilder.
			self buildAddButtonWith: aBuilder}
		yourself)