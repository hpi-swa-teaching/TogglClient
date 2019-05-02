as yet unclassified
asString
	^ self description , String space , (self stopTime subtractTime: self startTime) print24