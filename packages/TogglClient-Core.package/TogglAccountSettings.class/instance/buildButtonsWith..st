toolbuilder
buildButtonsWith: builder

	^ {
	builder pluggableButtonSpec new
		model: self; 
		label: 'Cancel';
		action: #actionCancel;
		yourself .
		
	builder pluggableButtonSpec new
		model: self; 
		label: 'Save and Close';
		action: #actionSaveAndClose;
		yourself }