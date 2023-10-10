Class {
	#name : 'SBPackageChooserPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'packagesSelection'
	],
	#category : 'NewSettingsBrowser',
	#package : 'NewSettingsBrowser'
}

{ #category : 'accessing - packages' }
SBPackageChooserPresenter >> allPackagesWithSettings [
	"Answer a <Collection> of packages (RPackage) which contains settings"

	^ (self packagesList collect: #receiverPackage) asSet asSortedCollection: [ :a :b | a packageName < b packageName ] 
]

{ #category : 'accessing - packages' }
SBPackageChooserPresenter >> constructPackagesWithSettingsSet [

	| result |
	result := self allPackagesWithSettings difference: self packagesSelection.
	^ result asSet asSortedCollection: [ :a :b | a packageName < b packageName ]
]

{ #category : 'showing' }
SBPackageChooserPresenter >> open [
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
SBPackageChooserPresenter >> packagesList [

	^ self treeHolder nodeList
]

{ #category : 'accessing' }
SBPackageChooserPresenter >> packagesSelection [
	"Answer a <Collection> of selected <RPackage>"
	
	^ packagesSelection
		ifNil: [ packagesSelection := self allPackagesWithSettings ]
]

{ #category : 'accessing' }
SBPackageChooserPresenter >> packagesSelection: anObject [

	packagesSelection := anObject
]

{ #category : 'accessing - packages' }
SBPackageChooserPresenter >> treeHolder [

	^ self owner treeHolder
]
