Class {
	#name : 'SBLegacyOperationsPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'expandAllButtonPresenter',
		'searchToolbarPresenter',
		'packagesButtonPresenter',
		'storeButtonPresenter',
		'loadButtonPresenter',
		'packageChooserPresenter'
	],
	#category : 'NewSettingsBrowser-Legacy',
	#package : 'NewSettingsBrowser',
	#tag : 'Legacy'
}

{ #category : 'layout' }
SBLegacyOperationsPresenter >> defaultLayout [ 

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
SBLegacyOperationsPresenter >> expandAllButtonPresenter [

	^ expandAllButtonPresenter
]

{ #category : 'accessing' }
SBLegacyOperationsPresenter >> expandAllButtonPresenter: anObject [

	expandAllButtonPresenter := anObject
]

{ #category : 'accessing - packages' }
SBLegacyOperationsPresenter >> initializePresenters [

	expandAllButtonPresenter := self newButton 
		action: [ self owner expandAll ];
		help: 'Expand all setting options';
		label: 'Expand all'; 
		yourself.
	searchToolbarPresenter := SBLegacySearchToolbarPresenter new.
	
	packageChooserPresenter := self instantiate: SBLegacyPackageChooserPresenter on: self.
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
SBLegacyOperationsPresenter >> loadButtonPresenter [

	^ loadButtonPresenter
]

{ #category : 'accessing' }
SBLegacyOperationsPresenter >> loadButtonPresenter: anObject [

	loadButtonPresenter := anObject
]

{ #category : 'accessing - packages' }
SBLegacyOperationsPresenter >> loadSettings [

	self treeHolder updateSettingNodes.
	self inform: 'Settings has been updated from the disk.'
]

{ #category : 'initialization' }
SBLegacyOperationsPresenter >> openPackageChooser [
	"Open a package chooser window to select with packages with settings"

	self packageChooserPresenter open
]

{ #category : 'accessing' }
SBLegacyOperationsPresenter >> packageChooserPresenter [

	^ packageChooserPresenter
]

{ #category : 'accessing' }
SBLegacyOperationsPresenter >> packageChooserPresenter: anObject [

	packageChooserPresenter := anObject
]

{ #category : 'accessing' }
SBLegacyOperationsPresenter >> packagesButtonPresenter [

	^ packagesButtonPresenter
]

{ #category : 'accessing' }
SBLegacyOperationsPresenter >> packagesButtonPresenter: anObject [

	packagesButtonPresenter := anObject
]

{ #category : 'accessing' }
SBLegacyOperationsPresenter >> searchToolbarPresenter [

	^ searchToolbarPresenter
]

{ #category : 'accessing' }
SBLegacyOperationsPresenter >> searchToolbarPresenter: anObject [

	searchToolbarPresenter := anObject
]

{ #category : 'accessing' }
SBLegacyOperationsPresenter >> storeButtonPresenter [

	^ storeButtonPresenter
]

{ #category : 'accessing' }
SBLegacyOperationsPresenter >> storeButtonPresenter: anObject [

	storeButtonPresenter := anObject
]

{ #category : 'accessing - packages' }
SBLegacyOperationsPresenter >> storeSettings [

	self treeHolder storeSettingNodes.
	self inform: 'Settings has been stored on the disk.'
]

{ #category : 'initialization' }
SBLegacyOperationsPresenter >> treeHolder [
	"Answer the receiver's setting tree"

	^ self owner treeHolder
]
