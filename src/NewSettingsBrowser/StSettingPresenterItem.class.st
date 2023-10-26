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
		add: labelPresenter width: 200;
		add: setterPresenter width: 150;
		add: descriptionPresenter expand: true;
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

	labelPresenter := self newLabel label: self model label.
	descriptionPresenter := self newText text: self model description.

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
