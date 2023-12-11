Extension { #name : 'Color' }

{ #category : '*NewSettingsBrowser' }
Color >> asSettingPresenter: aSettingDeclaration [ 

	^ (StSettingButtonPresenterItem on: aSettingDeclaration)
		buttonAction: [ aSettingDeclaration getFont ];
		yourself.
]
