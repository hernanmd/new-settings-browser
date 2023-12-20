Extension { #name : 'SHStyleElement' }

{ #category : '*NewSettingsBrowser' }
SHStyleElement >> asSettingPresenter: aSettingDeclaration [ 

	^ (StMultipleDropListPresenterItem on: aSettingDeclaration)
		value: self;
		yourself
]
