"
Presents a list with the main categories of settings.
Events triggered by clicking a category are defined in my owner through the transmission protocol, i.e. `StSettingsPanesPresenter >> #connectPresenters`
"
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
		(self 
			instantiate: StSettingsCategoryItemPresenter
			on: node) 
				addStyle: 'superCategoryList'  ]
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

{ #category : 'ports' }
StSettingsCategoriesPresenter >> defaultOutputPort [ 

	^ self categoryListPresenter
]

{ #category : 'initialization' }
StSettingsCategoriesPresenter >> defaultSettingsCategories [
	"Answer a <Collection> of <SBCategory> to be presented by default in the receiver"
	
	^ StSettingsCategoryItemPresenter defaultCategories
	
]

{ #category : 'initialization' }
StSettingsCategoriesPresenter >> initializePresenters [

	categoryListPresenter := self newComponentList
		items: self categoriesAsPresenters;
		yourself.
]

{ #category : 'initialization' }
StSettingsCategoriesPresenter >> settingsCategories [

	^ settingsCategories
		ifNil: [ settingsCategories := self defaultSettingsCategories ]
]

{ #category : 'REMOVE' }
StSettingsCategoriesPresenter >> updateDetailSetting: item [ 
	<delete>
	self owner updateDetailSetting: item node allChildren
	
]
