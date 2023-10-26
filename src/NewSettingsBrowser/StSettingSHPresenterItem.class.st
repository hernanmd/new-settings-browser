Class {
	#name : 'StSettingSHPresenterItem',
	#superclass : 'StSettingButtonPresenterItem',
	#instVars : [
		'tokenEmphasisPresenter'
	],
	#category : 'NewSettingsBrowser-Widgets',
	#package : 'NewSettingsBrowser',
	#tag : 'Widgets'
}

{ #category : 'initialization' }
StSettingSHPresenterItem >> initializePresenters [ 

	super initializePresenters.
	tokenEmphasisPresenter := self newDropList
]
