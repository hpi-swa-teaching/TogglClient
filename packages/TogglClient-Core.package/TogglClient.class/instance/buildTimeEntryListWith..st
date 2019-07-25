toolbuilder
buildTimeEntryListWith: aBuilder
	
	^ aBuilder pluggableTreeSpec new
		model: self;
		roots: #timeEntryList;
		menu: #timeEntryListMenu:;
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		columns: {
			[:listMorph | (listMorph filteredItems collect: [:item |item preferredWidthOfColumn: 1]) max].
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 3]) max].
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 3]) max].
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 3]) max].
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 3]) max].
			nil "take all the space" };
		frame: (LayoutFrame new 
			leftFraction: 0 offset: 0;
			topFraction: 0.1 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 0.93 offset: 0;
			yourself);
		yourself