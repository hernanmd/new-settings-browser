"
Main settings window.

It contains a tree which holds the settings.
"
Class {
	#name : 'SBLegacyMainPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'operationsPresenter',
		'tablePresenter',
		'treeHolder',
		'packageChooser'
	],
	#category : 'NewSettingsBrowser-Legacy',
	#package : 'NewSettingsBrowser',
	#tag : 'Legacy'
}

{ #category : 'opening' }
SBLegacyMainPresenter class >> browse: aCollectionOfKeywords [
	"open a SettingBrowser view which is able to browse all settings
	that are declared with a pragma keyword which is at least
	one of the string contained in aCollectionOfKeywords
	example:
	(SBMainPresenter browse: #('systemsettings'))
	browse all settings which make use of the pragma keyword 'systemsettings'

	Note that the default setting pragma keyword is 'systemsettings'
	"
	(self forKeywords: aCollectionOfKeywords) open
]

{ #category : 'opening' }
SBLegacyMainPresenter class >> forKeywords: aCollectionOfKeywords [
	"create a new SettingBrowser initialized with a set of pragma keywords"

	^ self 
		newApplication: self currentApplication
		model: aCollectionOfKeywords 

]

{ #category : 'opening' }
SBLegacyMainPresenter class >> openOnSystemSettings [
	"Open a window with the receiver's system settings"

	self browse: self settingsKeywords
]

{ #category : 'opening' }
SBLegacyMainPresenter class >> settingsKeywords [

	^ (Pragma allNamed: #settingPragmaProcessor) collect: [: p | p method selector]
]

{ #category : 'accessing - menu' }
SBLegacyMainPresenter >> collapseAll [
	"Collapse all settings in the receiever"
	
	self tablePresenter collapseAll
	
]

{ #category : 'layout' }
SBLegacyMainPresenter >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		add: operationsPresenter expand: false fill: true padding: 10;
		add: tablePresenter;
		add: 'Double click to browse.' expand: false;
		yourself
]

{ #category : 'accessing - menu' }
SBLegacyMainPresenter >> expandAll [
	"Expand all settings in the receiever"
	
	self tablePresenter expandAll
	
]

{ #category : 'initialization' }
SBLegacyMainPresenter >> initialExtent [ 

	^ 800 @ 600
]

{ #category : 'initialization' }
SBLegacyMainPresenter >> initializeOperationsPresenter [

	operationsPresenter := self instantiate: SBLegacyOperationsPresenter on: self
	
]

{ #category : 'initialization' }
SBLegacyMainPresenter >> initializePresenters [

	self initializeOperationsPresenter.
	self initializeTablePresenter.

]

{ #category : 'initialization' }
SBLegacyMainPresenter >> initializeTablePresenter [

	tablePresenter := self newTreeTable.
	tablePresenter
		alternateRowsColor;
		beResizable;
		enableSearch;
		addColumn: (SpCompositeTableColumn new
			title: 'Setting';
			addColumn: ((SpImageTableColumn 
				evaluated: [ : setting | self iconNamed: setting systemIconName ])
				width: 20;
				yourself);
			addColumn: (SpStringTableColumn evaluated: [ : setting | setting settingDeclaration label ]);
			yourself);
		addColumn: (SpStringTableColumn 
			title: 'Value' 
			evaluated: [ : setting | self settingValueFor: setting ]);
		addColumn: (SpStringTableColumn 
			title: 'Description' 
			evaluated: [ :setting | setting description asString ]);
		roots: self treeHolder settingTreeRoots;
		children: [ : aPragmaSetting | aPragmaSetting allChildren ];
		contextMenu: self menu;
		activateOnDoubleClick;
		whenActivatedDo: [ :selection | selection selectedItem browse ]
]

{ #category : 'accessing - menu' }
SBLegacyMainPresenter >> menu [
	^ self newMenu
		title: 'Setting menu';
		addGroup: [ :aGroup | 
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Expand all';
						shortcut: $a meta;
						description: 'Expand all setting categories';
						action: [ self expandAll ] ];
				addItem: [ :anItem | 
					anItem
						name: 'Collapse';
						shortcut: $A meta;
						iconName: #open;
						action: [ self collapseAll ] ];
				addItem: [ :anItem | 
					anItem
						name: 'Expand all from here';
						shortcut: $C meta;
						iconName: #open;
						action: [ self expandChildren ] ] ];						

		addGroup: [ :aGroup | 
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Browse';
						action: [ self halt. tablePresenter selectedItem traceCr ] ];
				addItem: [ :anItem | 
					anItem
						name: 'Save to disk';
						disable;
						action: [ self halt. tablePresenter  selectedItem traceCr ] ];
				addItem: [ :anItem | 
					anItem
						name: 'Disabled if class begins with A';
						enabled: [ tablePresenter selectedItem printString first ~= $A ];
						action: [ tablePresenter selectedItem traceCr ] ] ]
]

{ #category : 'accessing - model' }
SBLegacyMainPresenter >> newTreeHolder [

	^ SettingTree new acceptableKeywords: self settingsKeywords
]

{ #category : 'accessing' }
SBLegacyMainPresenter >> operationsPresenter [

	^ operationsPresenter
]

{ #category : 'accessing' }
SBLegacyMainPresenter >> operationsPresenter: anObject [

	operationsPresenter := anObject
]

{ #category : 'accessing - model' }
SBLegacyMainPresenter >> setModelBeforeInitialization: acceptableKeywords [

	treeHolder := self newTreeHolder.
	treeHolder whenChangedSend: #treeChanged: to: self
]

{ #category : 'accessing - model' }
SBLegacyMainPresenter >> settingValueFor: setting [

	^ setting contents 
		ifNotEmpty: [ : settingContents | String empty ]
		ifEmpty: [ setting realValue asString ].
]

{ #category : 'opening' }
SBLegacyMainPresenter >> settingsKeywords [

	^ self class settingsKeywords
]

{ #category : 'accessing' }
SBLegacyMainPresenter >> tablePresenter [

	^ tablePresenter
]

{ #category : 'accessing' }
SBLegacyMainPresenter >> tablePresenter: anObject [

	tablePresenter := anObject
]

{ #category : 'initialization' }
SBLegacyMainPresenter >> title [

	^ 'Settings Browser'
]

{ #category : 'accessing' }
SBLegacyMainPresenter >> treeHolder [

	^ treeHolder
]

{ #category : 'accessing' }
SBLegacyMainPresenter >> treeHolder: anObject [

	treeHolder := anObject
]
