Extension { #name : 'SettingDeclaration' }

{ #category : '*NewSettingsBrowser' }
SettingDeclaration >> asSettingPresenter [
	"Answer an appropriate <SpPresenter> for the receiver"

	^ self default asSettingPresenter: self label
]
