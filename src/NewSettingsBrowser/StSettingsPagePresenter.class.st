"
It represents a setting category page with setting sections and settings. The page was selected from `StSettingsCategoriesPresenter` and it matches a `StSettingsCategoryItemPresenter`.

"
Class {
	#name : 'StSettingsPagePresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'pageTitle',
		'settingsBox'
	],
	#category : 'NewSettingsBrowser-UI',
	#package : 'NewSettingsBrowser',
	#tag : 'UI'
}

{ #category : 'adding' }
StSettingsPagePresenter >> addToSettingsBox: aPresenter [

	settingsBox 
		add: ((self instantiate: aPresenter presenterClass on: aPresenter)
			addStyle: 'settingItemStyle';
			yourself)
		expand: false
]

{ #category : 'initialization' }
StSettingsPagePresenter >> defaultInputPort [ 

	^ SpModelPort newPresenter: self

]

{ #category : 'layout' }
StSettingsPagePresenter >> defaultLayout [ 

	^ SpBoxLayout newTopToBottom 
		add: pageTitle expand: false;
		add: (SpScrollableLayout with: (settingsBox := SpBoxLayout newTopToBottom spacing: 10));
		yourself
]

{ #category : 'initialization' }
StSettingsPagePresenter >> initializePresenters [ 

	pageTitle := self newLabel.
	self layout: self defaultLayout.

]

{ #category : 'accessing - model' }
StSettingsPagePresenter >> setModel: aNode [ 

	pageTitle 
		label: aNode label;
		addStyle: 'pageTitle'.
	
	settingsBox removeAll.
	aNode allChildren do: [ : s | 
		self addToSettingsBox: s ]
]
