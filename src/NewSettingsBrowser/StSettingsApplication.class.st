Class {
	#name : 'StSettingsApplication',
	#superclass : 'SpApplication',
	#instVars : [
		'iconMap'
	],
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'world menu' }
StSettingsApplication class >> menuSettingsBrowserCommandOn: aBuilder [
	<worldMenu>

	(aBuilder item: #'New Settings Browser')
		parent: #Tools;
		label: 'New Settings Browser';
		action: [ self new run ];
		icon: (self iconNamed: self taskbarIconName);
		help: 'New Settings Browser';
		order: 100		
]

{ #category : 'instance creation' }
StSettingsApplication class >> open [
	<script>

	self new start.
]

{ #category : 'accessing' }
StSettingsApplication >> iconMap [

	^ iconMap
		ifNil: [ iconMap := self initializeIconMap ]
]

{ #category : 'accessing' }
StSettingsApplication >> iconMapAt: aString [ 

	^ self iconMap at: aString
]

{ #category : 'initialization' }
StSettingsApplication >> initializeIconMap [

	^ Dictionary new
		at: #appearance put: #appearanceIcon;
		at: #codeBrowsing put: #refactoringIcon;
		at: #compiler put: #compilerIcon;
		at: #network put: #networkIcon;
		at: #pharoSystem put: #systemIcon;
		at: #refactoring put: #refactoringIcon;
		at: #shortcuts put: #shortcutsIcon;
		at: #taskitExecution put: #taskitIcon;
		at: #codeEditing put: #texteditorIcon;
		at: #tools put: #toolsIcon;
		yourself
]

{ #category : 'private - factory' }
StSettingsApplication >> newIconProvider [
	
	^ StSettingsBrowserIconProvider new , SpPharoThemeIconProvider new
]

{ #category : 'running' }
StSettingsApplication >> start [
	" Private - See superimplementor's comment "

	(StSettingsMainPresenter newApplication: self) open
]

{ #category : 'adding' }
StSettingsApplication >> styleSheet [

	^ SpStyle defaultStyleSheet , 
	    (SpStyleVariableSTONReader fromString: '.application [
    .superCategoryList [ Geometry { #height:130 } ]
]')

]