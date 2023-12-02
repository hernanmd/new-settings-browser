Class {
	#name : 'StSettingDropListPresenterItem',
	#superclass : 'StSettingPresenterItem',
	#category : 'NewSettingsBrowser-Widgets',
	#package : 'NewSettingsBrowser',
	#tag : 'Widgets'
}

{ #category : 'as yet unclassified' }
StSettingDropListPresenterItem >> initializePresenters [ 

	super initializePresenters.
	setterPresenter := self newDropList
		items: self model domainValues;
		display: [ : item | item name ];
		selectIndex: self model index;
		yourself
]
