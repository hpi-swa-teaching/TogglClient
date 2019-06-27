accessing
timerDurationAs24hour
	
	| duration |
	duration := self timer duration.
	^ (duration asString copyFrom: 3 to: 10) asTime print24