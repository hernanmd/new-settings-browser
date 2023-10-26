Extension { #name : 'PickOneSettingDeclaration' }

{ #category : '*NewSettingsBrowser' }
PickOneSettingDeclaration >> asSettingPresenter [
	"Answer an appropriate <SpPresenter> container for the receiver's value"

	^ StSettingDropListPresenterItem on: self

]
