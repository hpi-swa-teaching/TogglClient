toolbuilder
buildButtonBar: builder
	| buttonBar accountButton |
	buttonBar := builder pluggablePanelSpec new
		layout: #horizontal;
		"spacing: -1;"
		children: OrderedCollection new;
		frame: (LayoutFrame new leftFraction: 0 offset: 0;
					 topFraction: 1 offset: -25;
					 rightFraction: 1 offset: 0;
					 bottomFraction: 1 offset: 0)
		yourself.

	accountButton := builder pluggableActionButtonSpec new.
	accountButton
		model: self;
		label: 'Authenticate';
		action: #actionAuthenticate;
		help: 'Edit your Toggl account info.'.

	buttonBar children addAll: {
		builder pluggableSpacerSpec new.
		accountButton. builder pluggableSpacerSpec new. }.
	^ buttonBar