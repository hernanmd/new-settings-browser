Extension { #name : 'AbstractFileReference' }

{ #category : '*NewSettingsBrowser' }
AbstractFileReference >> asSettingPresenter: aSettingDeclaration [ 

	^ (StSettingTextPresenterItem on: aSettingDeclaration)
		value: self;
		yourself
]
