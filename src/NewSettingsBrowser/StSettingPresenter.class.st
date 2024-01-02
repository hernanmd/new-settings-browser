Class {
	#name : 'StSettingPresenter',
	#superclass : 'StSettingsAbstracPresenter',
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

{ #category : 'initialization' }
StSettingPresenter >> sectionTitle [

	^ title
]

{ #category : 'initialization' }
StSettingPresenter >> sectionTitleStyle: aString [

	self sectionTitle addStyle: aString
]

{ #category : 'accessing - model' }
StSettingPresenter >> setModelBeforeInitialization: aModel [

	settingNode := aModel

]
