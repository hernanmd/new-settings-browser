Extension { #name : 'UITheme' }

{ #category : '*NewSettingsBrowser' }
UITheme class >> asSettingPresenter: aString [ 

	^ SpDropListPresenter new
		dropListItems: PolymorphSystemSettings uiThemeClassChoices;
		yourself
]
