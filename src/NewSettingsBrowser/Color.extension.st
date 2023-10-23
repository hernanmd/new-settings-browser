Extension { #name : 'Color' }

{ #category : '*NewSettingsBrowser' }
Color >> asSettingPresenter: aString [ 

	^ SpTextInputFieldPresenter new
		beEditable;
		text: self name;
		yourself
]
