"
It represents a setting node Spec presenter with children (a section).
"
Class {
	#name : 'StSettingSectionPresenter',
	#superclass : 'StSettingPresenter',
	#instVars : [
		'detailSettingsListPresenter',
		'detailBox'
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
		add: (detailBox := SpBoxLayout newTopToBottom
			spacing: 20;
			yourself);
		yourself
]

{ #category : 'initialization' }
StSettingSectionPresenter >> initializePresenters [

	super initializePresenters.
	title addStyle: 'sectionTitle'.
	self layout: self defaultLayout

	
]

{ #category : 'initialization' }
StSettingSectionPresenter >> updatePresenter [

	super updatePresenter.
	settingNode hasChildren
		ifTrue: [ settingNode allChildren do: [ :each | self owner addToSettingsBox: each ]	 ]
		ifFalse: [ detailBox add: settingNode asPresenter expand: false ]
]

{ #category : 'updating' }
StSettingSectionPresenter >> updatePresenterChildren: aStSettingNode [ 

	aStSettingNode updatePresenterOn: detailBox
]
