Extension { #name : 'CmdShortcutActivation' }

{ #category : '*NewSettingsBrowser' }
CmdShortcutActivation >> asSettingPresenter: aString [ 

	^ SpTextInputFieldPresenter new
		text: self keyCombination asString;
		yourself
]
