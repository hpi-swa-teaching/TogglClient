as yet unclassified
buildWith: aBuilder
	
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Toggl Client';
		extent: 500@400;
		yourself)