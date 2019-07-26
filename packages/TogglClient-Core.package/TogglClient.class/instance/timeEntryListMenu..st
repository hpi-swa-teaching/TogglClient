toolbuilder
timeEntryListMenu: aMenu

	aMenu addList: #(
		('rename'	#renameTimeEntry)
		('restart' #restartTimeEntry) 
		('change default user' #setDefaultUserAndPassword)).
	^ aMenu
	