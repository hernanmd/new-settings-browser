Extension { #name : 'Boolean' }

{ #category : '*NewSettingsBrowser' }
Boolean >> asSettingPresenter: aString [

	^ SpCheckBoxPresenter new
		labelOnLeft;
		state: self;
		label: aString;
		yourself
]
