Extension { #name : 'ThemeIcons' }

{ #category : '*NewSettingsBrowser' }
ThemeIcons >> asSettingPresenter: aString [ 

	^ SpDropListPresenter new
		setCollection: { self name };
		yourself
]
