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
		add: #title height: 30;
		add: #detailSettingsListPresenter height: 200;
		yourself
]

{ #category : 'initialization' }
StSettingSectionPresenter >> initializePresenters [

	super initializePresenters.
	title addStyle: 'sectionTitle'.
	detailSettingsListPresenter := self newComponentList
		items: (settingNode allChildren collect: #asPresenter);
		whenSelectedDo: [ self halt ];
		whenSelectedItemChangedDo: [ : item | self halt ];
		yourself
	
]
