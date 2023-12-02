Class {
	#name : 'StSettingNumberPresenterItem',
	#superclass : 'StSettingPresenterItem',
	#category : 'NewSettingsBrowser-Widgets',
	#package : 'NewSettingsBrowser',
	#tag : 'Widgets'
}

{ #category : 'initialization' }
StSettingNumberPresenterItem >> beFloat [

	self setterPresenter beFloat
]

{ #category : 'initialization' }
StSettingNumberPresenterItem >> beInteger [

	self setterPresenter beInteger
]

{ #category : 'initialization' }
StSettingNumberPresenterItem >> initializePresenters [ 

	super initializePresenters.
	setterPresenter := self newNumberInput.
]

{ #category : 'api' }
StSettingNumberPresenterItem >> number: anInteger [ 
	"Set the receiver's value to anInteger"

	self setterPresenter number: anInteger
]
