Class {
	#name : 'StSettingNode',
	#superclass : 'SpPresenter',
	#instVars : [
		'item',
		'pragma',
		'parentName',
		'model'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'instance creation' }
StSettingNode class >> with: aPragmaSetting [ 

	^ self new setItem: aPragmaSetting
]

{ #category : 'accessing' }
StSettingNode >> allChildren [

	^ self model childrenOf: self
]

{ #category : 'accessing' }
StSettingNode >> item [
	^ item
]

{ #category : 'accessing' }
StSettingNode >> model [

	^ model
]

{ #category : 'accessing' }
StSettingNode >> model: aStSettingsTree [ 

	model := aStSettingsTree
]

{ #category : 'accessing' }
StSettingNode >> order [
	^ item order
]

{ #category : 'accessing' }
StSettingNode >> order: anInteger [
	item order: anInteger
]

{ #category : 'accessing' }
StSettingNode >> parentName [
	^ parentName
]

{ #category : 'accessing' }
StSettingNode >> parentName: aSymbol [
	parentName := aSymbol
]

{ #category : 'accessing' }
StSettingNode >> pragma: aPragma [
	pragma := aPragma
]

{ #category : 'initialization' }
StSettingNode >> setItem: aPragmaSetting [ 

	item := aPragmaSetting
]

{ #category : 'accessing' }
StSettingNode >> settingDeclaration [
	^ self item
]
