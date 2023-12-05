"
It represents a wrapper for an individual setting presenter. Subclasses may override accordingly to the ""type"" of value to set. For example, this class provides a label and a description presenters, but subclasses may also add a Number or Float presenter for the value to set.
"
Class {
	#name : 'StSettingPresenterItem',
	#superclass : 'SpPresenter',
	#instVars : [
		'labelPresenter',
		'setterPresenter',
		'descriptionPresenter',
		'model'
	],
	#category : 'NewSettingsBrowser-Widgets',
	#package : 'NewSettingsBrowser',
	#tag : 'Widgets'
}

{ #category : 'layout' }
StSettingPresenterItem >> defaultLayout [

	^ SpBoxLayout newLeftToRight
		vAlignCenter;
		add: labelPresenter width: 200;
		add: setterPresenter width: 150;
		add: descriptionPresenter;
		yourself
]

{ #category : 'accessing' }
StSettingPresenterItem >> descriptionPresenter [

	^ descriptionPresenter
]

{ #category : 'accessing' }
StSettingPresenterItem >> descriptionPresenter: anObject [

	descriptionPresenter := anObject
]

{ #category : 'initialization' }
StSettingPresenterItem >> initializePresenters [
	"Set a label and description presenters as baseline for every setting"

	labelPresenter := self newLabel label: self model label.
	descriptionPresenter := self newText 
		text: self model description;
		addStyle: 'descriptionStyle';
		yourself.

]

{ #category : 'accessing' }
StSettingPresenterItem >> labelPresenter [

	^ labelPresenter
]

{ #category : 'accessing' }
StSettingPresenterItem >> labelPresenter: anObject [

	labelPresenter := anObject
]

{ #category : 'accessing' }
StSettingPresenterItem >> model [

	^ model
]

{ #category : 'accessing - model' }
StSettingPresenterItem >> setModelBeforeInitialization: aModel [

	model := aModel
]

{ #category : 'accessing' }
StSettingPresenterItem >> setterPresenter [

	^ setterPresenter
]

{ #category : 'accessing' }
StSettingPresenterItem >> setterPresenter: anObject [

	setterPresenter := anObject
]
