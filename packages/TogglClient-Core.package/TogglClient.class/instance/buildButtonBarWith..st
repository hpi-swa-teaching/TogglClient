toolbuilder
buildButtonBarWith: builder
	| buttonBar accountButton authenticateButton |
	buttonBar := builder pluggablePanelSpec new
		layout: #horizontal;
		"spacing: -1;"
		children: OrderedCollection new;
		frame: (LayoutFrame new leftFraction: 0 offset: 0;
					 topFraction: 1 offset: -30;
					 rightFraction: 1 offset: 0;
					 bottomFraction: 1 offset: 0)
		yourself.

	accountButton := builder pluggableActionButtonSpec new.
	accountButton
		model: self;
		label: 'Account settings';
		action: #actionAuthenticate;
		help: 'Edit your Toggl account info.'.
		
	authenticateButton := builder pluggableActionButtonSpec new.
	authenticateButton
		model: self;
		label: 'Authenticate';
		action: #startAuthentication;
		color: #getAuthenticationColor;
		help: 'Authenticate yourself.'.

	buttonBar children addAll: {
		accountButton. builder pluggableSpacerSpec new. authenticateButton }.
	^ buttonBar