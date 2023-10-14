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

	self halt.
	^ (Pragma allNamed: #systemsettings) collect: [: p | p method selector ]
]

{ #category : 'instance creation' }
StSettingsTree >> newSettingTreeBuilderNodes [
	"Walk over the receiver's pragmas. Build and answer a <Collection> of <StSettingNode>, each one representing a specific setting"
	| builder |

	builder := StSettingTreeBuilder new.
	self pragmasDo: [ :p | builder buildPragma: p ].
	nodeList := builder nodeList.
	nodeList do: [:n | n model: self].
	^ nodeList
]

{ #category : 'instance creation' }
StSettingsTree >> newTreeHolder [
	"Set the receiver's collector to gather the system setting pragmas"

	^ self
		acceptableKeywords: { #systemsettings };
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
