Class {
	#name : 'StSettingBooleanPresenterItem',
	#superclass : 'StSettingPresenterItem',
	#category : 'NewSettingsBrowser-Widgets',
	#package : 'NewSettingsBrowser',
	#tag : 'Widgets'
}

{ #category : 'initialization' }
StSettingBooleanPresenterItem >> initializePresenters [ 

	super initializePresenters.
	setterPresenter := self newCheckBox.
]

{ #category : 'initialization' }
StSettingBooleanPresenterItem >> state: aBoolean [

	self setterPresenter state: aBoolean
]
