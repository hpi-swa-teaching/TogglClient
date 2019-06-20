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
		label: #loginLogoutButtonLabel;
		action: #actionAuthenticate;
		changeLabelWhen: #authenticated;
		help: 'Login/logout from your Toggl account'.
		
	authenticateButton := builder pluggableActionButtonSpec new.
	authenticateButton
		model: self;
		label: 'Synchronize';
		action: #actionSynchronize;
		help: 'Pull from Server.'.

	buttonBar children addAll: {
		accountButton. builder pluggableSpacerSpec new. authenticateButton }.
	^ buttonBar