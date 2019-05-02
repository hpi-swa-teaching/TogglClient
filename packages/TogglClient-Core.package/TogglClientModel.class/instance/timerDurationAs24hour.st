accessing
timerDurationAs24hour
	|duration|
	duration := self timer duration.
	^ duration hours asString , ':' , duration minutes asString, ':' , duration seconds asString