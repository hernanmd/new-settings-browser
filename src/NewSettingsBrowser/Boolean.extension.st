Extension { #name : 'Boolean' }

{ #category : '*NewSettingsBrowser' }
Boolean >> asSettingPresenter: aSettingDeclaration [

	^ (StSettingBooleanPresenterItem on: aSettingDeclaration)
		value: self;
		yourself
]
