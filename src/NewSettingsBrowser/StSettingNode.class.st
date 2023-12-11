"
Represents a single setting

"
Class {
	#name : 'StSettingNode',
	#superclass : 'Object',
	#instVars : [
		'declaration',
		'pragma',
		'parentName',
		'model'
	],
	#category : 'NewSettingsBrowser-Model',
	#package : 'NewSettingsBrowser',
	#tag : 'Model'
}

{ #category : 'instance creation' }
StSettingNode class >> with: aPragmaSetting [ 

	^ self new declaration: aPragmaSetting
]

{ #category : 'accessing' }
StSettingNode >> allChildren [
	"Answer a <Collection> of the settings for which the receiver is set as parent"

	^ self model childrenOf: self
]

{ #category : 'converting' }
StSettingNode >> asPresenter [
	"Answer a <SpPresenter> for the receiver's setting type"

	^ self declaration asSettingPresenter
]

{ #category : 'checking' }
StSettingNode >> checkForUnknownTarget [

	self parentNode 
		ifNotNil: [:p | 
			self declarationTarget 
				ifNil: [ self declarationTarget: p declaration target ].
			self declaration targetSelector 
				ifNil: [ self declaration targetSelector: p declaration targetSelector ] ].
	self allChildren do: [: c | c checkForUnknownTarget ]
]

{ #category : 'accessing' }
StSettingNode >> declaration [

	^ declaration
]

{ #category : 'initialization' }
StSettingNode >> declaration: aPragmaSetting [ 

	declaration := aPragmaSetting
]

{ #category : 'accessing' }
StSettingNode >> declarationTarget [

	^ self declaration target
]

{ #category : 'accessing' }
StSettingNode >> declarationTarget: anObject [

	self declaration target: anObject
]

{ #category : 'testing' }
StSettingNode >> hasChildren [

	^ self allChildren notEmpty
]

{ #category : 'accessing' }
StSettingNode >> item [

	^ declaration
]

{ #category : 'accessing' }
StSettingNode >> label [

	^ self declaration label
]

{ #category : 'accessing' }
StSettingNode >> label: aString [

	declaration label: aString.
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
StSettingNode >> name [

	^ self declaration name
]

{ #category : 'accessing' }
StSettingNode >> order [

	^ self declaration order
]

{ #category : 'accessing' }
StSettingNode >> order: anObject [

	self declaration order: anObject
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
StSettingNode >> parentNode [

	^ self model nodeNamed: self parentName
]

{ #category : 'accessing' }
StSettingNode >> pragma [
	^ pragma
]

{ #category : 'initialization' }
StSettingNode >> pragma: aPragma [

	pragma := aPragma
]

{ #category : 'converting' }
StSettingNode >> presenterClass [

	^ self hasChildren
		ifTrue: [ StSettingSectionPresenter ]
		ifFalse: [ StSettingNodePresenter ]
]

{ #category : 'printing' }
StSettingNode >> printOn: aStream [
	"Private - See superimplementor's comment"
	
	super printOn: aStream.
	aStream
		nextPutAll: ' [';
		nextPutAll: self parentName asString;
		nextPutAll: '] '.
	self declaration
		ifNotNil: [ : i | aStream nextPutAll: i name asString  ].
	aStream 
		nextPutAll: ' (';
		nextPutAll: self allChildren size asString;
		nextPutAll: ') '

]

{ #category : 'accessing' }
StSettingNode >> settingDeclaration [

	^ declaration
]

{ #category : 'accessing' }
StSettingNode >> updatePresenterOn: aSpBoxLayout [ 
	self shouldBeImplemented.
]
