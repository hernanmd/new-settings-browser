Extension { #name : 'AbstractFileReference' }

{ #category : '*NewSettingsBrowser' }
AbstractFileReference >> asSettingPresenter: aSettingDeclaration [ 

	^ SpTextInputFieldPresenter new
		text: self fullName;
		yourself
]
