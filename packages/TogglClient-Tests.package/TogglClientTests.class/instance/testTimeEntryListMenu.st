tests
testTimeEntryListMenu

	| menu |
	menu := client timeEntryListMenu: PluggableMenuSpec new.
	self assert: (menu isKindOf: PluggableMenuSpec).
	self assert: (menu items first isKindOf: PluggableMenuItemSpec).
	self assert: menu items first label equals: 'rename'.