accessing
timerDurationAs24hour
	
	| duration |
	duration := self timer duration.
	^ (duration asString copyFrom: self durationStartingPosition to: self durationEndingPosition) asTime print24