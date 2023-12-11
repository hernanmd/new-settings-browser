Extension { #name : 'Float' }

{ #category : '*NewSettingsBrowser' }
Float >> asSettingPresenter: aSettingDeclaration [ 

	^ (StSettingNumberPresenterItem on: aSettingDeclaration)
		beFloat;
		value: self;
		yourself
]
