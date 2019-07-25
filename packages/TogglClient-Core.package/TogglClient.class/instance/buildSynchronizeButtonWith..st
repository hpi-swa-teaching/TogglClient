toolbuilder
buildSynchronizeButtonWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Synchronize';
		action: #actionSynchronize;
		help: 'Pull from Server.';
		yourself
