Extension { #name : 'Integer' }

{ #category : '*NewSettingsBrowser' }
Integer >> asSettingPresenter: aSettingDeclaration [ 

	^ (StSettingNumberPresenterItem on: aSettingDeclaration)
		beInteger;
		value: self;
		yourself
]
