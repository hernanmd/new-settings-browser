Extension { #name : 'Float' }

{ #category : '*NewSettingsBrowser' }
Float >> asSettingPresenter: aSettingDeclaration [ 

	^ (StSettingNumberPresenterItem on: aSettingDeclaration)
		beFloat;
		number: self;
		yourself
]
