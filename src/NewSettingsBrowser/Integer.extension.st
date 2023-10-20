Extension { #name : 'Integer' }

{ #category : '*NewSettingsBrowser' }
Integer >> asSettingPresenter: aString [ 

	^ SpNumberInputFieldPresenter new
		beInteger;
		number: self;
		yourself
]
