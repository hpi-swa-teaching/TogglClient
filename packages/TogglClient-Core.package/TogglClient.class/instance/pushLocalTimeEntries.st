actions
pushLocalTimeEntries

	|localTimeEntries|
	localTimeEntries := self timeEntryList select: [:t  | t isSynchronized not].
	localTimeEntries do: [ :localTimeEntry |
		self togglAPI pushTimeEntry: localTimeEntry
			WithUser: self account userName Password: self account userPassword.
		localTimeEntry isSynchronized: true].