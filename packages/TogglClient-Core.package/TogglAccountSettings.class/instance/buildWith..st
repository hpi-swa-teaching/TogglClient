toolbuilder
buildWith: builder

	^ builder build: (builder pluggableDialogSpec new
		model: self;
		label: #labelString;
		autoCancel: true;
		extent: 200 @ 60;
		message: 'Edit global Toggl account information:';
		children: {self buildInputPanelWith: builder};
		buttons: (self buildButtonsWith: builder))