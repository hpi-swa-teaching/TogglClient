toolbuilder
buildLoginLogoutButtonWith: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		model: self;
		label: #loginLogoutButtonLabel;
		action: #actionLoginLogout;
		changeLabelWhen: #authenticated;
		help: 'Login/logout from your Toggl account';
		yourself
		