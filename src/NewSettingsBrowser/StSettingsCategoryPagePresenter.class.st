Class {
	#name : 'StSettingsCategoryPagePresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'settingsListPresenter',
		'pageTitle'
	],
	#category : 'NewSettingsBrowser-UI',
	#package : 'NewSettingsBrowser',
	#tag : 'UI'
}

{ #category : 'initialization' }
StSettingsCategoryPagePresenter >> defaultInputPort [ 

	^ SpModelPort newPresenter: self

]

{ #category : 'layout' }
StSettingsCategoryPagePresenter >> defaultLayout [ 

	^ SpBoxLayout newTopToBottom 
		add: pageTitle height: 5;
		add: settingsListPresenter;
		yourself
]

{ #category : 'initialization' }
StSettingsCategoryPagePresenter >> initializePresenters [ 

	pageTitle := self newLabel.
	settingsListPresenter := self newComponentList
		addStyle: 'pageStyle';
		yourself

]

{ #category : 'accessing - model' }
StSettingsCategoryPagePresenter >> setModel: aNode [ 

	pageTitle 
		label: aNode label;
		addStyle: 'pageTitle'.
	settingsListPresenter items: (aNode allChildren collect: [ : s | 
		(self instantiate: s presenterClass on: s)
			addStyle: 'settingItemStyle';
			yourself ])
]

{ #category : 'accessing' }
StSettingsCategoryPagePresenter >> settingsListPresenter [

	^ settingsListPresenter
]

{ #category : 'accessing' }
StSettingsCategoryPagePresenter >> settingsListPresenter: anObject [

	settingsListPresenter := anObject
]
