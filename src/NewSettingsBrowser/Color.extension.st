Extension { #name : 'Color' }

{ #category : '*NewSettingsBrowser' }
Color >> asSettingPresenter: aSettingDeclaration [ 

	^ (StSettingSHStyleButtonColorPresenterItem on: aSettingDeclaration)
		buttonAction: [ aSettingDeclaration getColor ];
		yourself.
]
