Class {
	#name : 'StSettingsMainPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'toolbarPresenter',
		'mainCategoriesPresenter',
		'detailsPresenter'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'layout' }
StSettingsMainPresenter >> defaultLayout [

	^ SpBoxLayout newTopToBottom 
		add: toolbarPresenter height: self class toolbarHeight;
		add: (SpPanedLayout newHorizontal 
			positionOfSlider: 0.3;		
			add: mainCategoriesPresenter;
			add: detailsPresenter;
			yourself);
		yourself
]

{ #category : 'initialization' }
StSettingsMainPresenter >> initializePresenters [

	toolbarPresenter := self instantiate: StSettingsToolbarPresenter on: self.
	mainCategoriesPresenter := self instantiate: StSettingsCategoriesPresenter on: self.
	detailsPresenter := self newNullPresenter.
]
