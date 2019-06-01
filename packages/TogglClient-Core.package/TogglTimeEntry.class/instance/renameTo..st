rename
renameTo: aString
	aString ifEmpty: [self description: 'no description']
		ifNotEmpty: [self description: aString].