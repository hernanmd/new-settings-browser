Class {
	#name : 'SBOperationsPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'expandAllButtonPresenter',
		'searchToolbarPresenter',
		'packagesButtonPresenter',
		'storeButtonPresenter',
		'loadButtonPresenter',
		'packageChooserPresenter'
	],
	#category : 'NewSettingsBrowser',
	#package : 'NewSettingsBrowser'
}

{ #category : 'layout' }
SBOperationsPresenter >> defaultLayout [ 

	^ SpBoxLayout newLeftToRight 
		spacing: 5;
		vAlignCenter;		
		add: #expandAllButtonPresenter expand: false;
		add: #searchToolbarPresenter expand: true fill: true;
		add: #packagesButtonPresenter expand: false;
		add: #storeButtonPresenter expand: false;
		add: #loadButtonPresenter expand: false;
		yourself
]

{ #category : 'accessing' }
SBOperationsPresenter >> expandAllButtonPresenter [

	^ expandAllButtonPresenter
]

{ #category : 'accessing' }
SBOperationsPresenter >> expandAllButtonPresenter: anObject [

	expandAllButtonPresenter := anObject
]

{ #category : 'accessing - packages' }
SBOperationsPresenter >> initializePresenters [

	expandAllButtonPresenter := self newButton 
		action: [ self owner expandAll ];
		help: 'Expand all setting options';
		label: 'Expand all'; 
		yourself.
	searchToolbarPresenter := SBSearchToolbarPresenter new.
	
	packageChooserPresenter := self instantiate: SBPackageChooserPresenter on: self.
	packagesButtonPresenter := self newButton 
		label: 'Choose packages'; 
		action: [ self openPackageChooser ];
		yourself.
	storeButtonPresenter := self newButton 
		label: 'Store Settings'; 
		help: 'Store the current settings';
		action: [ self storeSettings ];
		yourself.
	loadButtonPresenter := self newButton 
		action: [ self loadSettings ];
		label: 'Load Settings'; 
		help: 'Load the current settings from the disk';
		yourself.
]

{ #category : 'accessing' }
SBOperationsPresenter >> loadButtonPresenter [

	^ loadButtonPresenter
]

{ #category : 'accessing' }
SBOperationsPresenter >> loadButtonPresenter: anObject [

	loadButtonPresenter := anObject
]

{ #category : 'accessing - packages' }
SBOperationsPresenter >> loadSettings [

	self treeHolder updateSettingNodes.
	self inform: 'Settings has been updated from the disk.'
]

{ #category : 'initialization' }
SBOperationsPresenter >> openPackageChooser [
	"Open a package chooser window to select with packages with settings"

	self packageChooserPresenter open
]

{ #category : 'accessing' }
SBOperationsPresenter >> packageChooserPresenter [

	^ packageChooserPresenter
]

{ #category : 'accessing' }
SBOperationsPresenter >> packageChooserPresenter: anObject [

	packageChooserPresenter := anObject
]

{ #category : 'accessing' }
SBOperationsPresenter >> packagesButtonPresenter [

	^ packagesButtonPresenter
]

{ #category : 'accessing' }
SBOperationsPresenter >> packagesButtonPresenter: anObject [

	packagesButtonPresenter := anObject
]

{ #category : 'accessing' }
SBOperationsPresenter >> searchToolbarPresenter [

	^ searchToolbarPresenter
]

{ #category : 'accessing' }
SBOperationsPresenter >> searchToolbarPresenter: anObject [

	searchToolbarPresenter := anObject
]

{ #category : 'accessing' }
SBOperationsPresenter >> storeButtonPresenter [

	^ storeButtonPresenter
]

{ #category : 'accessing' }
SBOperationsPresenter >> storeButtonPresenter: anObject [

	storeButtonPresenter := anObject
]

{ #category : 'accessing - packages' }
SBOperationsPresenter >> storeSettings [

	self treeHolder storeSettingNodes.
	self inform: 'Settings has been stored on the disk.'
]

{ #category : 'initialization' }
SBOperationsPresenter >> treeHolder [
	"Answer the receiver's setting tree"

	^ self owner treeHolder
]
