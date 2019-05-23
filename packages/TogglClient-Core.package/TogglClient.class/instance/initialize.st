initialisation
initialize
	
	super initialize.
	self timeEntryList: OrderedCollection new.
	self timer: Stopwatch new.
	self currentText: String empty.
	self authenticated: false.
	self account: TogglAccount new.

