Extension { #name : 'String' }

{ #category : '*NewSettingsBrowser' }
String >> asSettingPresenter: aSettingDeclaration [ 

	^ (StSettingTextPresenterItem on: aSettingDeclaration)
		value: self;
		yourself
]
