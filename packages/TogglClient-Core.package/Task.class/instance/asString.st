as yet unclassified
asString
	^ self description ,
	' ' ,
	(self stopTime subtractTime: self startTime) print24 ,
	' (' ,
	self startTime asDate asString ,
	' ' ,
	self startTime print24 ,
	' - ',
	self stopTime asDate asString ,
	' ' ,
	self stopTime print24,
	')'