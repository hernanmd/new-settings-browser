Extension { #name : 'SHStyleElement' }

{ #category : '*NewSettingsBrowser' }
SHStyleElement >> asSettingPresenter: aString [ 

	^ SpLabelPresenter new
		label: self asString;
		yourself
]
