running
setUp

	accountSettings := TogglAccountSettings new.
	account := TogglAccount new.
	client := TogglClient new.
	accountSettings togglClient: client; account: account.
	client account: account.
	toolbuilder := ToolBuilder default