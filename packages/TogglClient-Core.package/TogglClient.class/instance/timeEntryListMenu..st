toolbuilder
timeEntryListMenu: aMenu

	aMenu addList: #(
	('rename'	#renameTimeEntry)
	('change default user' #setDefaultUserAndPassword)).
	^ aMenu
	