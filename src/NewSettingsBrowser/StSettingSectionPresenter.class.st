Class {
	#name : 'StSettingSectionPresenter',
	#superclass : 'StSettingPresenter',
	#instVars : [
		'detailSettingsListPresenter'
	],
	#category : 'NewSettingsBrowser-UI',
	#package : 'NewSettingsBrowser',
	#tag : 'UI'
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
		addStyle: 'sectionStyle';
		items: (settingNode allChildren collect: #asPresenter);
		whenSelectedDo: [ : item | self halt ];
		whenSelectedItemChangedDo: [ : item | self halt ];
		yourself
	
]
