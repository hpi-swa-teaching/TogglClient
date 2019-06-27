accessing
duration

	self stopDateAndTime ifNil: [^ 0].
	^ (self stopDateAndTime - self startDateAndTime) asSeconds