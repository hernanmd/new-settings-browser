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
	#superclass : 'StSettingPresenter',
	#instVars : [
		'settingPresenter'
	],
	#category : 'NewSettingsBrowser-UI',
	#package : 'NewSettingsBrowser',
	#tag : 'UI'
}

{ #category : 'instance creation' }
StSettingNodePresenter class >> with: aPragmaSetting [ 

	^ self new setItem: aPragmaSetting
]

{ #category : 'layout' }
StSettingNodePresenter >> defaultLayout [

	^ SpBoxLayout newLeftToRight
		add: #settingPresenter;
		yourself
]

{ #category : 'initialization' }
StSettingNodePresenter >> initializePresenters [

	super initializePresenters.
	settingPresenter := self settingNode asPresenter.
]

{ #category : 'accessing' }
StSettingNodePresenter >> settingNode [

	^ settingNode
]
