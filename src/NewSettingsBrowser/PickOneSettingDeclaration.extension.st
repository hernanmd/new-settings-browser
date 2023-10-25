Extension { #name : 'PickOneSettingDeclaration' }

{ #category : '*NewSettingsBrowser' }
PickOneSettingDeclaration >> asSettingPresenter [
	"Answer an appropriate <SpPresenter> container for the receiver's value"

	^ SpDropListPresenter new
		items: self domainValues;
		display: [ : item | item name ];
		selectIndex: self index;
		yourself

]
