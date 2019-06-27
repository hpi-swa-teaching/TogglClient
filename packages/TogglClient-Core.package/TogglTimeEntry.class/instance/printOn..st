converting
printOn: aStream

	aStream nextPutAll: self description; tab.	
	self stopDateAndTime ifNil: [
		aStream
			tab;
			nextPutAll: self startDateAndTime asDate asString;
			tab;
			nextPutAll: self startDateAndTime asTime print24]
		ifNotNil: [
			aStream
				nextPutAll: (self stopDateAndTime asTime subtractTime:
					self startDateAndTime asTime) print24; tab;
				nextPutAll: self startDateAndTime asDate asString; tab;
				nextPutAll: self startDateAndTime asTime print24; tab;
				nextPutAll: self stopDateAndTime asDate asString; tab;
				nextPutAll: self stopDateAndTime asTime print24.].
		