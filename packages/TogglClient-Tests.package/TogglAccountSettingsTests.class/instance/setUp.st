running
setUp

	account := TogglAccount new.
      client := TogglClient new.
	accountSettings := TogglAccountSettings new
		togglClient: client; 
		account: account.
	client account: account.
	toolbuilder := ToolBuilder default