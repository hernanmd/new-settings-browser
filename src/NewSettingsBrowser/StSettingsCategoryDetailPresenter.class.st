Class {
	#name : 'StSettingsCategoryDetailPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'settingsListPresenter'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'initialization' }
StSettingsCategoryDetailPresenter >> defaultInputPort [ 

	^  settingsListPresenter

]

{ #category : 'layout' }
StSettingsCategoryDetailPresenter >> defaultLayout [ 

	^ SpBoxLayout newTopToBottom 
		add: settingsListPresenter;
		yourself
]

{ #category : 'initialization' }
StSettingsCategoryDetailPresenter >> initializePresenters [ 

	settingsListPresenter := self newComponentList.

]

{ #category : 'initialization' }
StSettingsCategoryDetailPresenter >> items: aCollection [ 

	self halt.
	settingsListPresenter items: aCollection
]

{ #category : 'accessing' }
StSettingsCategoryDetailPresenter >> settingsListPresenter [

	^ settingsListPresenter
]

{ #category : 'accessing' }
StSettingsCategoryDetailPresenter >> settingsListPresenter: anObject [

	settingsListPresenter := anObject
]
