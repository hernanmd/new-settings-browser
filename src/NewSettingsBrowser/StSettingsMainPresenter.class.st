Class {
	#name : 'StSettingsMainPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'toolbarPresenter',
		'detailsPresenter',
		'settingsPanesPresenter',
		'mainCategoriesPresenter'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'initialization' }
StSettingsMainPresenter >> browserTitle [ 

	^ 'Settings Browser'
]

{ #category : 'initialization' }
StSettingsMainPresenter >> connectPresenters [ 

	mainCategoriesPresenter 
		transmitTo: detailsPresenter
		transform: [ : aCategoryItemPresenter | aCategoryItemPresenter node ]
]

{ #category : 'layout' }
StSettingsMainPresenter >> defaultInputPort [ 

	^ SpListItemsPort newPresenter: detailsPresenter

]

{ #category : 'layout' }
StSettingsMainPresenter >> defaultLayout [

	^ SpBoxLayout newTopToBottom 
		add: toolbarPresenter height: self class toolbarHeight;
		add: (SpPanedLayout newHorizontal 
			positionOfSlider: 0.2;		
			add: mainCategoriesPresenter;
			add: detailsPresenter;
			yourself);
		yourself
]

{ #category : 'ports' }
StSettingsMainPresenter >> defaultOutputPort [ 

	^ mainCategoriesPresenter
]

{ #category : 'initialization' }
StSettingsMainPresenter >> initializePresenters [

	toolbarPresenter := self instantiate: StSettingsToolbarPresenter on: self.
	"settingsPanesPresenter := self instantiate: StSettingsPanesPresenter on: self."
	mainCategoriesPresenter := self instantiate: StSettingsCategoriesPresenter on: self.
	detailsPresenter := self instantiate: StSettingsCategoryPagePresenter on: self.
]

{ #category : 'initialization' }
StSettingsMainPresenter >> initializeWindow: aWindowPresenter [

	aWindowPresenter
		title: self browserTitle;
		initialExtent: 1000 @ 700;
		centered
]

{ #category : 'REMOVE' }
StSettingsMainPresenter >> updateDetailSetting: aCollection [ 
	<delete>

	self layout 
		replace: detailsPresenter
		with: (self instantiate: StSettingsCategoryPagePresenter on: aCollection)
]
