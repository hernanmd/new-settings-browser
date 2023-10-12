Class {
	#name : 'StSettingsTree',
	#superclass : 'SettingTree',
	#instVars : [
		'treeHolder'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'opening' }
StSettingsTree class >> settingsKeywords [

	^ (Pragma allNamed: #settingPragmaProcessor) collect: [: p | p method selector ]
]

{ #category : 'instance creation' }
StSettingsTree >> newSettingTreeBuilderNodes [

	| builder |

	builder := StSettingTreeBuilder new.
	self pragmasDo: [:p | builder buildPragma: p].
	nodeList := builder nodeList.
	nodeList do: [:n | n model: self].
	^ nodeList
]

{ #category : 'instance creation' }
StSettingsTree >> newTreeHolder [

	^ self
		acceptableKeywords: self settingsKeywords;
		nodeList: self newSettingTreeBuilderNodes;
		yourself
]

{ #category : 'accessing' }
StSettingsTree >> nodeList: aCollection [ 

	nodeList := aCollection
]

{ #category : 'instance creation' }
StSettingsTree >> settingsKeywords [

	^ self class settingsKeywords
]

{ #category : 'instance creation' }
StSettingsTree >> treeRoots [

	^ self newTreeHolder settingTreeRoots
]
