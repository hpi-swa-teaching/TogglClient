accessing
timerDurationAs24hour
	|duration h m s|
	duration := self timer duration.
	h := duration hours.
	m := duration minutes.
	s := duration seconds.
	^ String streamContents: 
		[ :aStream |
			(h < 10 ifTrue: [  aStream nextPutAll: '0']). 
			h printOn: aStream.
			aStream nextPutAll:  (m < 10 ifTrue: [':0'] ifFalse: [':']).
			m printOn: aStream.
			aStream nextPutAll: (s < 10 ifTrue: [':0'] ifFalse: [':']).
			s printOn: aStream. ] 