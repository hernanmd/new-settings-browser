Class {
	#name : 'StSettingSectionPresenter',
	#superclass : 'StSettingPresenter',
	#instVars : [
		'detailSettingsListPresenter'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'instance creation' }
StSettingSectionPresenter class >> with: aPragmaSetting [ 

	^ self new setItem: aPragmaSetting
]

{ #category : 'layout' }
StSettingSectionPresenter >> defaultLayout [

	^ SpBoxLayout newTopToBottom 
		add: #title expand: false;
		add: #detailSettingsListPresenter;
		yourself
]

{ #category : 'initialization' }
StSettingSectionPresenter >> initializePresenters [

	super initializePresenters.
	detailSettingsListPresenter := self newComponentList
		whenSelectedDo: [ self halt ];
		whenSelectedItemChangedDo: [ : item | self halt ];
		yourself
	
]
