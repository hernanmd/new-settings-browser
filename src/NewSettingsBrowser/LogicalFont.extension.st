Extension { #name : 'LogicalFont' }

{ #category : '*NewSettingsBrowser' }
LogicalFont >> asSettingPresenter: aString [ 

	| info |
	
	info := String streamContents: [ : stream |
		stream 
			<< self realFont textStyleName;
			space;
			<< self realFont pointSize asString ].
	^ SpLabelPresenter new
		label: info;
		yourself.
]
