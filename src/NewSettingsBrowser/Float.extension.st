Extension { #name : 'Float' }

{ #category : '*NewSettingsBrowser' }
Float >> asSettingPresenter: aString [ 

	^ SpNumberInputFieldPresenter new
		beFloat;
		number: self;
		yourself
]
