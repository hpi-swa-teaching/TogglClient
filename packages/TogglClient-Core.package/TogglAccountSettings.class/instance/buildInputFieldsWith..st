toolbuilder
buildInputFieldsWith: builder

	^ {
	builder pluggableInputFieldSpec new
		model: self;
		getText: #actionUserName;
		editText: #actionUserName:;
		setText: #actionUserName:;
		help: 'Toggl user name.'.
	builder pluggableInputFieldSpec new
		model: self;
		getText: #actionUserPassword;
		editText: #actionUserPassword:;
		setText: #actionUserPassword:;
		help: 'Toggl password'
	}