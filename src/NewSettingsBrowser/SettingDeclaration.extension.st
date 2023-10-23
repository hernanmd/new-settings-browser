Extension { #name : 'SettingDeclaration' }

{ #category : '*NewSettingsBrowser' }
SettingDeclaration >> asSettingPresenter [
	"Answer an appropriate <SpPresenter> container for the receiver's value"

	^ self default asSettingPresenter: self label
]
