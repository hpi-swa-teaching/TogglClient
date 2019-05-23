converting
printOn: aStream
	aStream
		nextPutAll: self description;
		tab;
		nextPutAll: (self stopTime subtractTime: self startTime) print24;
		tab;
		nextPutAll: self startTime asDate asString;
		tab;
		nextPutAll: self startTime print24;
		tab;
		nextPutAll: self stopTime asDate asString;
		tab;
		nextPutAll: self stopTime print24.
	
		