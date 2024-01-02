Class {
	#name : 'StSettingsToolbarPresenter',
	#superclass : 'StSettingsAbstracPresenter',
	#instVars : [
		'searchInputPresenter',
		'searchButtonPresenter'
	],
	#category : 'NewSettingsBrowser-UI',
	#package : 'NewSettingsBrowser',
	#tag : 'UI'
}

{ #category : 'layout' }
StSettingsToolbarPresenter >> defaultLayout [ 

	^ SpBoxLayout newLeftToRight 
		add: searchInputPresenter;
		add: searchButtonPresenter expand: false;
		yourself
]

{ #category : 'initialization' }
StSettingsToolbarPresenter >> initializePresenters [

	searchInputPresenter := self newSearchInput
		placeholder: 'Find in settings';
		whenTextChangedDo: [ :aString | self updateSearch: aString ];
		yourself.
	searchButtonPresenter := self newButton
		label: 'Search';
		yourself.
]

{ #category : 'initialization' }
StSettingsToolbarPresenter >> updateSearch: aString [
	"Private - Callback to search aString in the receiver's descriptions and label"

	aString size >= 2
		ifFalse: [ ^ self ].
	self haltOnce.
	self settingsTree 
		processSearch: aString 
		on: self
]
