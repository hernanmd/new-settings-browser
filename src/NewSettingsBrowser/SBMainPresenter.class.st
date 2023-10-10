"
Main settings window.

It contains a tree which holds the settings.
"
Class {
	#name : 'SBMainPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'operationsPresenter',
		'tablePresenter',
		'treeHolder',
		'packageChooser'
	],
	#category : 'NewSettingsBrowser',
	#package : 'NewSettingsBrowser'
}

{ #category : 'opening' }
SBMainPresenter class >> browse: aCollectionOfKeywords [
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
SBMainPresenter class >> forKeywords: aCollectionOfKeywords [
	"create a new SettingBrowser initialized with a set of pragma keywords"

	^ self 
		newApplication: self currentApplication
		model: aCollectionOfKeywords 

]

{ #category : 'opening' }
SBMainPresenter class >> openOnSystemSettings [
	"Open a window with the receiver's system settings"

	self browse: self settingsKeywords
]

{ #category : 'opening' }
SBMainPresenter class >> settingsKeywords [

	^ (Pragma allNamed: #settingPragmaProcessor) collect: [: p | p method selector]
]

{ #category : 'accessing - menu' }
SBMainPresenter >> collapseAll [
	"Collapse all settings in the receiever"
	
	self tablePresenter collapseAll
	
]

{ #category : 'layout' }
SBMainPresenter >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		add: operationsPresenter expand: false fill: true padding: 10;
		add: tablePresenter;
		add: 'Double click to browse.' expand: false;
		yourself
]

{ #category : 'accessing - menu' }
SBMainPresenter >> expandAll [
	"Expand all settings in the receiever"
	
	self tablePresenter expandAll
	
]

{ #category : 'initialization' }
SBMainPresenter >> initialExtent [ 

	^ 800 @ 600
]

{ #category : 'initialization' }
SBMainPresenter >> initializeOperationsPresenter [

	operationsPresenter := self instantiate: SBOperationsPresenter on: self
	
]

{ #category : 'initialization' }
SBMainPresenter >> initializePresenters [

	self initializeOperationsPresenter.
	self initializeTablePresenter.

]

{ #category : 'initialization' }
SBMainPresenter >> initializeTablePresenter [

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
SBMainPresenter >> menu [
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
SBMainPresenter >> newTreeHolder [

	^ SettingTree new acceptableKeywords: self settingsKeywords
]

{ #category : 'accessing' }
SBMainPresenter >> operationsPresenter [

	^ operationsPresenter
]

{ #category : 'accessing' }
SBMainPresenter >> operationsPresenter: anObject [

	operationsPresenter := anObject
]

{ #category : 'accessing - model' }
SBMainPresenter >> setModelBeforeInitialization: acceptableKeywords [

	treeHolder := self newTreeHolder.
	treeHolder whenChangedSend: #treeChanged: to: self
]

{ #category : 'accessing - model' }
SBMainPresenter >> settingValueFor: setting [

	^ setting contents 
		ifNotEmpty: [ : settingContents | String empty ]
		ifEmpty: [ setting realValue asString ].
]

{ #category : 'opening' }
SBMainPresenter >> settingsKeywords [

	^ self class settingsKeywords
]

{ #category : 'accessing' }
SBMainPresenter >> tablePresenter [

	^ tablePresenter
]

{ #category : 'accessing' }
SBMainPresenter >> tablePresenter: anObject [

	tablePresenter := anObject
]

{ #category : 'initialization' }
SBMainPresenter >> title [

	^ 'Settings Browser'
]

{ #category : 'accessing' }
SBMainPresenter >> treeHolder [

	^ treeHolder
]

{ #category : 'accessing' }
SBMainPresenter >> treeHolder: anObject [

	treeHolder := anObject
]
