Class {
	#name : 'StSettingsPanesPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'mainCategoriesPresenter',
		'detailsPresenter'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'initialization' }
StSettingsPanesPresenter >> connectPresenters [ 

	mainCategoriesPresenter 
		transmitTo: detailsPresenter
		transform: [ : aValue | self halt. ]
]

{ #category : 'layout' }
StSettingsPanesPresenter >> defaultLayout [

	^ SpPanedLayout newHorizontal 
			positionOfSlider: 0.3;		
			add: mainCategoriesPresenter;
			add: detailsPresenter;
			yourself
]

{ #category : 'initialization' }
StSettingsPanesPresenter >> initializePresenters [

	mainCategoriesPresenter := self instantiate: StSettingsCategoriesPresenter on: self.
	detailsPresenter := self instantiate: StSettingsCategoryDetailPresenter on: self.
]