Class {
	#name : 'StSettingButtonPresenterItem',
	#superclass : 'StSettingPresenterItem',
	#category : 'NewSettingsBrowser-Widgets',
	#package : 'NewSettingsBrowser',
	#tag : 'Widgets'
}

{ #category : 'accessing' }
StSettingButtonPresenterItem >> buttonAction: aFullBlockClosure [ 

	self setterPresenter action: aFullBlockClosure
]

{ #category : 'font accessing' }
StSettingButtonPresenterItem >> buttonFont: aLogicalFont [ 

	self setterPresenter font: aLogicalFont
]

{ #category : 'initialization' }
StSettingButtonPresenterItem >> buttonLabel: aString [

	self setterPresenter label: aString.
]

{ #category : 'initialization' }
StSettingButtonPresenterItem >> initializePresenters [ 

	super initializePresenters.
	setterPresenter := self newButton
]
