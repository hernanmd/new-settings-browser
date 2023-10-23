Extension { #name : 'ThemeIcons' }

{ #category : '*NewSettingsBrowser' }
ThemeIcons >> asSettingPresenter: aString [ 

	^ SpDropListPresenter new
		items: { self };
		display: [ : e | e name ];		
		yourself
]
