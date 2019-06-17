parsing
createJsonFromTimeEntry: aTimeEntry
	|result|
	result := '{"time_entry":{"description":"', aTimeEntry description,
	'","duration":', aTimeEntry duration,
	',"start":"', aTimeEntry startDateAndTime asUTC,
	'","wid":', aTimeEntry wid ,',"created_with":"squeak"}}'.
	
	^ result