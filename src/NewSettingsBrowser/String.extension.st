Extension { #name : 'String' }

{ #category : '*NewSettingsBrowser' }
String >> asSettingPresenter: aSettingDeclaration [ 

	^ SpTextInputFieldPresenter new
		beEditable;
		placeholder: aSettingDeclaration label;
		text: self;
		yourself
]
