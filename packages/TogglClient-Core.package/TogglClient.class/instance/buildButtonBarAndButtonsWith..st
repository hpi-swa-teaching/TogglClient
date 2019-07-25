toolbuilder
buildButtonBarAndButtonsWith: aBuilder

	| buttonBar accountButton synchronizeButton |
	buttonBar := self buildButtonBarWith: aBuilder.
	accountButton := self buildLoginLogoutButtonWith: aBuilder.
	synchronizeButton := self buildSynchronizeButtonWith: aBuilder.

	buttonBar children addAll: {
		accountButton . aBuilder pluggableSpacerSpec new . synchronizeButton }.
		
	^ buttonBar