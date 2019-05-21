toolbuilder
buildInputPanelWith: builder
	^ builder pluggablePanelSpec new
		model: self;
		layout: #vertical;
		children: (self buildInputFieldsWith: builder);
		frame: (0@0 corner: 1@1)