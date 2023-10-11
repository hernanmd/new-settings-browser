Class {
	#name : 'StSettingsCategoriesPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'categoryListPresenter',
		'settingsCategories'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'initialization' }
StSettingsCategoriesPresenter >> categoriesAsPresenters [

	^ self settingsCategories collect: [ : node | 
		self 
			instantiate: StSettingsCategoryPresenter
			on: node  ]
]

{ #category : 'accessing' }
StSettingsCategoriesPresenter >> categoryListPresenter [

	^ categoryListPresenter
]

{ #category : 'accessing' }
StSettingsCategoriesPresenter >> categoryListPresenter: anObject [

	categoryListPresenter := anObject
]

{ #category : 'layout' }
StSettingsCategoriesPresenter >> defaultLayout [ 

	^ SpBoxLayout newTopToBottom 
		add: categoryListPresenter;
		yourself.
]

{ #category : 'initialization' }
StSettingsCategoriesPresenter >> defaultSettingsCategories [
	"Answer a <Collection> of <SBCategory> to be presented by default in the receiver"
	
	^ StSettingsCategoryPresenter defaultCategories
	
]

{ #category : 'initialization' }
StSettingsCategoriesPresenter >> initializePresenters [

	categoryListPresenter := self newComponentList
		items: self categoriesAsPresenters;
		whenSelectionChangedDo: [ : item | self updateDetailSetting: item selectedItem ];
		yourself.
]

{ #category : 'initialization' }
StSettingsCategoriesPresenter >> settingsCategories [

	^ settingsCategories
		ifNil: [ settingsCategories := self defaultSettingsCategories ]
]

{ #category : 'initialization' }
StSettingsCategoriesPresenter >> updateDetailSetting: item [ 

	item node allChildren
]
