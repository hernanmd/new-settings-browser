"
A StSettingNodePresenter is used by a SettingCollector as a node for setting trees. Built trees can be viewed by a SettingBrowser

Instance Variables
	contents:		<Collection of SettingTreeNode>
	parentNode:		<SettingTreeNode or nil>

contents
	- the children

parentNode
	- the parent or nil if the node is a root

"
Class {
	#name : 'StSettingNodePresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'item',
		'pragma',
		'parentName',
		'model',
		'title',
		'detailSettingsListPresenter'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'instance creation' }
StSettingNodePresenter class >> with: aPragmaSetting [ 

	^ self new setItem: aPragmaSetting
]

{ #category : 'accessing' }
StSettingNodePresenter >> allChildren [
	"Answer a <Collection> of the settings for which the receiver is set as parent"

	^ self model childrenOf: self
]

{ #category : 'layout' }
StSettingNodePresenter >> defaultLayout [

	^ SpBoxLayout newTopToBottom 
		add: #title expand: false;
		add: #detailSettingsListPresenter;
		yourself
]

{ #category : 'initialization' }
StSettingNodePresenter >> initializePresenters [

	title := self newLabel.
	detailSettingsListPresenter := self newComponentList.
	
]

{ #category : 'accessing' }
StSettingNodePresenter >> item [
	^ item
]

{ #category : 'initialization' }
StSettingNodePresenter >> label: aString [

	title label: aString.
	item label: aString.
]

{ #category : 'accessing' }
StSettingNodePresenter >> model [

	^ model
]

{ #category : 'accessing' }
StSettingNodePresenter >> model: aStSettingsTree [ 

	model := aStSettingsTree
]

{ #category : 'accessing' }
StSettingNodePresenter >> order [
	^ item order
]

{ #category : 'accessing' }
StSettingNodePresenter >> order: anInteger [
	item order: anInteger
]

{ #category : 'accessing' }
StSettingNodePresenter >> parentName [
	^ parentName
]

{ #category : 'accessing' }
StSettingNodePresenter >> parentName: aSymbol [
	parentName := aSymbol
]

{ #category : 'accessing' }
StSettingNodePresenter >> pragma: aPragma [
	pragma := aPragma
]

{ #category : 'printing' }
StSettingNodePresenter >> printOn: aStream [
	"Private - See superimplementor's comment"
	
	super printOn: aStream.
	aStream
		nextPutAll: ' [';
		nextPutAll: self parentName asString;
		nextPutAll: '] '.
	self item 
		ifNotNil: [ : i | 
			aStream nextPutAll: i name asString  ]

]

{ #category : 'initialization' }
StSettingNodePresenter >> setItem: aPragmaSetting [ 

	item := aPragmaSetting
]

{ #category : 'accessing' }
StSettingNodePresenter >> settingDeclaration [
	^ self item
]
