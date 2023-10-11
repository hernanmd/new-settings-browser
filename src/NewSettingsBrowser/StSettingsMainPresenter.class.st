Class {
	#name : 'StSettingsMainPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'toolbarPresenter',
		'mainCategoriesPresenter',
		'detailsPresenter',
		'settingsPanesPresenter'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'initialization' }
StSettingsMainPresenter >> browserTitle [ 

	^ 'Settings Browser'
]

{ #category : 'layout' }
StSettingsMainPresenter >> defaultLayout [

	^ SpBoxLayout newTopToBottom 
		add: toolbarPresenter height: self class toolbarHeight;
		add: settingsPanesPresenter;
		yourself
]

{ #category : 'initialization' }
StSettingsMainPresenter >> initializePresenters [

	toolbarPresenter := self instantiate: StSettingsToolbarPresenter on: self.
	settingsPanesPresenter := self instantiate: StSettingsPanesPresenter on: self.
]

{ #category : 'initialization' }
StSettingsMainPresenter >> initializeWindow: aWindowPresenter [

	aWindowPresenter
		title: self browserTitle;
		initialExtent: 1000 @ 700;
		centered
]

{ #category : 'initialization' }
StSettingsMainPresenter >> updateDetailSetting: aCollection [ 

	self layout 
		replace: detailsPresenter
		with: (self instantiate: StSettingsDetailPresenter on: aCollection)
]
