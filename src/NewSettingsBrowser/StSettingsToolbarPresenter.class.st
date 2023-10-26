Class {
	#name : 'StSettingsToolbarPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'searchInputPresenter'
	],
	#category : 'NewSettingsBrowser-UI',
	#package : 'NewSettingsBrowser',
	#tag : 'UI'
}

{ #category : 'layout' }
StSettingsToolbarPresenter >> defaultLayout [ 

	^ SpBoxLayout newLeftToRight 
		add: searchInputPresenter;
		yourself
]

{ #category : 'initialization' }
StSettingsToolbarPresenter >> initializePresenters [

	searchInputPresenter := self newSearchInput.
]
