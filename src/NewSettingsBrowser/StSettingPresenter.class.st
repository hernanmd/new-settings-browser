Class {
	#name : 'StSettingPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'title',
		'settingNode'
	],
	#category : 'NewSettingsBrowser-UI',
	#package : 'NewSettingsBrowser',
	#tag : 'UI'
}

{ #category : 'initialization' }
StSettingPresenter >> initializePresenters [

	title := self newLabel label: settingNode label. 
]

{ #category : 'accessing - model' }
StSettingPresenter >> setModelBeforeInitialization: aModel [

	settingNode := aModel

]
