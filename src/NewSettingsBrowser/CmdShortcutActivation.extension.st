Extension { #name : 'CmdShortcutActivation' }

{ #category : '*NewSettingsBrowser' }
CmdShortcutActivation >> asSettingPresenter: aDeclaration [ 

	^ (StSettingTextPresenterItem on: aDeclaration) 
		value: self keyCombination asString;
		yourself
]
