"
Represents a single setting browser category item.

"
Class {
	#name : 'StSettingsCategoryItemPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'node',
		'labelPresenter',
		'iconPresenter'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'accessing' }
StSettingsCategoryItemPresenter class >> defaultCategories [
	"Answer a <Collection> of <SBCategory> which are the default in the receiver's image"
	
	^ StSettingsTree new treeRoots
]

{ #category : 'initialization' }
StSettingsCategoryItemPresenter >> defaultLayout [ 

	^ SpBoxLayout newTopToBottom 
		hAlignCenter;
		add: iconPresenter width: 35;
		add: labelPresenter;
		yourself
]

{ #category : 'accessing' }
StSettingsCategoryItemPresenter >> iconMapAt: aString [ 

	^ self application iconMapAt: aString
]

{ #category : 'accessing' }
StSettingsCategoryItemPresenter >> iconPresenter [

	^ iconPresenter
]

{ #category : 'accessing' }
StSettingsCategoryItemPresenter >> iconPresenter: anObject [

	iconPresenter := anObject
]

{ #category : 'initialization' }
StSettingsCategoryItemPresenter >> initializePresenters [ 

	labelPresenter := self newLabel label: node item label.
	iconPresenter := self iconNamed: (self iconMapAt: node item name).

]

{ #category : 'accessing' }
StSettingsCategoryItemPresenter >> labelPresenter [

	^ labelPresenter
]

{ #category : 'accessing' }
StSettingsCategoryItemPresenter >> labelPresenter: anObject [

	labelPresenter := anObject
]

{ #category : 'accessing' }
StSettingsCategoryItemPresenter >> node [
	^ node
]

{ #category : 'accessing - model' }
StSettingsCategoryItemPresenter >> setModelBeforeInitialization: aSettingNode [

	node := aSettingNode
	
]
