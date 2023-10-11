"
Represents a single setting browser category item.

"
Class {
	#name : 'StSettingsCategoryPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'node',
		'labelPresenter'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'accessing' }
StSettingsCategoryPresenter class >> defaultCategories [
	"Answer a <Collection> of <SBCategory> which are the default in the receiver's image"
	
	^ StSettingsTree new treeRoots
]

{ #category : 'initialization' }
StSettingsCategoryPresenter >> defaultLayout [ 

	^ SpBoxLayout newLeftToRight 
		add: labelPresenter;
		yourself
]

{ #category : 'initialization' }
StSettingsCategoryPresenter >> initializePresenters [ 

	labelPresenter := self newLabel label: node item label.
	
]

{ #category : 'accessing' }
StSettingsCategoryPresenter >> node [
	^ node
]

{ #category : 'initialization' }
StSettingsCategoryPresenter >> setModelBeforeInitialization: aSettingNode [

	node := aSettingNode
	
]
