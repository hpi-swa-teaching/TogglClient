tests
testCreateJsonFromTimeEntry
	| expectedJson actualJson |
	expectedJson := '{"time_entry":{"description":"anothertest","duration":10,"start":"2019-01-01T11:37:00+00:00","wid":1234,"created_with":"squeak"}}'.
	actualJson := TogglJsonParser createJsonFromTimeEntry: testTimeEntry.
	self assert: expectedJson equals: actualJson.