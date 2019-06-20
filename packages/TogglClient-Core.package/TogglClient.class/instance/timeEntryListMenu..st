toolbuilder
timeEntryListMenu: aMenu

	aMenu addList: #(
	('rename'	#renameTimeEntry)
	('restart' #restartTimeEntry) ).
	^ aMenu
	