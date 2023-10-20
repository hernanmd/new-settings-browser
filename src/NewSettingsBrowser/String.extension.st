Extension { #name : 'String' }

{ #category : '*NewSettingsBrowser' }
String >> asSettingPresenter: aString [ 

	^ SpTextInputFieldPresenter new
		beEditable;
		placeholder: aString;
		text: self;
		yourself
]
