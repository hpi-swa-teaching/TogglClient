initialize-release
initialize
	
	super initialize.
	self 
		timer: Stopwatch new;
		currentText: String empty;
		authenticated: false;
		account: TogglAccount new;
		togglAPI: TogglAPI new;
		timeEntryList: (SortedCollection sortBlock: [
			:a :b | a startDateAndTime > b startDateAndTime])
