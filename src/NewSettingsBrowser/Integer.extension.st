Extension { #name : 'Integer' }

{ #category : '*NewSettingsBrowser' }
Integer >> asSettingPresenter: aSettingDeclaration [ 

	^ (StSettingNumberPresenterItem on: aSettingDeclaration)
		beInteger;
		number: self;
		yourself
]
