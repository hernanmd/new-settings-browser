Extension { #name : 'Boolean' }

{ #category : '*NewSettingsBrowser' }
Boolean >> asSettingPresenter: aSettingDeclaration [

	^ SpCheckBoxPresenter new
		labelOnLeft;
		state: self;
		label: aSettingDeclaration label;
		yourself
]
