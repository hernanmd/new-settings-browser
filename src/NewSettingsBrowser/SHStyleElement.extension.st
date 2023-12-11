Extension { #name : 'SHStyleElement' }

{ #category : '*NewSettingsBrowser' }
SHStyleElement >> asSettingPresenter: aSettingDeclaration [ 

	^ (StSettingTextPresenterItem on: aSettingDeclaration)
		value: self;
		yourself
]
