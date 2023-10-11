Class {
	#name : 'StSettingsToolbarPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'searchInputPresenter'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
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
