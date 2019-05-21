toolbuilder
buildTaskListWith: aBuilder
	
	^ aBuilder pluggableTreeSpec new
		model: self;
		roots: #taskList;
		menu: #taskListMenu:;
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		columns: {[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
				[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 3]) max].
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 3]) max].
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 3]) max].
				nil "take all the space"};
		frame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			topFraction: 0.1 offset: 0;
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0);
		yourself