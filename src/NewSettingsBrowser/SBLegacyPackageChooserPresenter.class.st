Class {
	#name : 'SBLegacyPackageChooserPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'packagesSelection'
	],
	#category : 'NewSettingsBrowser-Legacy',
	#package : 'NewSettingsBrowser',
	#tag : 'Legacy'
}

{ #category : 'accessing - packages' }
SBLegacyPackageChooserPresenter >> allPackagesWithSettings [
	"Answer a <Collection> of packages (RPackage) which contains settings"

	^ (self packagesList collect: #receiverPackage) asSet asSortedCollection: [ :a :b | a packageName < b packageName ] 
]

{ #category : 'accessing - packages' }
SBLegacyPackageChooserPresenter >> constructPackagesWithSettingsSet [

	| result |
	result := self allPackagesWithSettings difference: self packagesSelection.
	^ result asSet asSortedCollection: [ :a :b | a packageName < b packageName ]
]

{ #category : 'showing' }
SBLegacyPackageChooserPresenter >> open [
	"Open a package chooser window to select with packages with settings"

	((SpChooserPresenter
		sourceItems: self constructPackagesWithSettingsSet
		chosenItems: self packagesSelection
		displayBlock: [ : item | item packageName ])
			sourceLabel: 'Available Packages';
			targetLabel: 'Selected Packages')
			openDialog
			title: 'Choose Packages';
			okAction: [ : dialog | self collectFromPackages: dialog presenter chosenItems ]
]

{ #category : 'accessing - packages' }
SBLegacyPackageChooserPresenter >> packagesList [

	^ self treeHolder nodeList
]

{ #category : 'accessing' }
SBLegacyPackageChooserPresenter >> packagesSelection [
	"Answer a <Collection> of selected <RPackage>"
	
	^ packagesSelection
		ifNil: [ packagesSelection := self allPackagesWithSettings ]
]

{ #category : 'accessing' }
SBLegacyPackageChooserPresenter >> packagesSelection: anObject [

	packagesSelection := anObject
]

{ #category : 'accessing - packages' }
SBLegacyPackageChooserPresenter >> treeHolder [

	^ self owner treeHolder
]
