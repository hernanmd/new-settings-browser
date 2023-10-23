Extension { #name : 'AbstractFileReference' }

{ #category : '*NewSettingsBrowser' }
AbstractFileReference >> asSettingPresenter: aString [ 

	^ SpTextInputFieldPresenter new
		text: self fullName;
		yourself
]
