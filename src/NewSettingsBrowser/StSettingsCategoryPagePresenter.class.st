Class {
	#name : 'StSettingsCategoryPagePresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'settingsListPresenter',
		'pageTitle'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'initialization' }
StSettingsCategoryPagePresenter >> defaultInputPort [ 

	^ SpModelPort newPresenter: self

]

{ #category : 'layout' }
StSettingsCategoryPagePresenter >> defaultLayout [ 

	^ SpBoxLayout newTopToBottom 
		add: pageTitle expand: false;
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

{ #category : 'initialization' }
StSettingsCategoryPagePresenter >> items: aCollection [ 

	settingsListPresenter items: aCollection
]

{ #category : 'accessing - model' }
StSettingsCategoryPagePresenter >> setModel: aNode [ 

	pageTitle 
		label: aNode item label;
		addStyle: 'pageTitle'.		
	settingsListPresenter items: aNode allChildren
]

{ #category : 'accessing' }
StSettingsCategoryPagePresenter >> settingsListPresenter [

	^ settingsListPresenter
]

{ #category : 'accessing' }
StSettingsCategoryPagePresenter >> settingsListPresenter: anObject [

	settingsListPresenter := anObject
]
