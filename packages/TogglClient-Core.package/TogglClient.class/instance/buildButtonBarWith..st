toolbuilder
buildButtonBarWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: OrderedCollection new;
		frame: (LayoutFrame new 
			leftFraction: 0 offset: 0;
			topFraction: 1 offset: -30;
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0;
			yourself);
		yourself
		