Extension { #name : 'UITheme' }

{ #category : '*NewSettingsBrowser' }
UITheme class >> asSettingPresenter: aString [ 

	^ SpDropListPresenter new
		items: PolymorphSystemSettings uiThemeClassChoices;
		display: [ : e | e name ];
		yourself
]
