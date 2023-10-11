Class {
	#name : 'SBLegacySearchToolbarPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'searchLabelPresenter',
		'searchToolbarPresenter',
		'regexpCheckboxPresenter',
		'searchedTextList'
	],
	#category : 'NewSettingsBrowser-Legacy',
	#package : 'NewSettingsBrowser',
	#tag : 'Legacy'
}

{ #category : 'initialization' }
SBLegacySearchToolbarPresenter >> addToSearchedTextList: aString [

	(self searchedTextList includes: aString)
		ifFalse: [ 
			self searchedTextList size > 5 
				ifTrue: [ self searchedTextList removeFirst ].
		self searchedTextList add: aString ]
]

{ #category : 'initialization' }
SBLegacySearchToolbarPresenter >> applyFilters [

	self searchedText
		ifNotEmpty: [ self updateAccordingTo: self textFilter ].
	self viewedPackages
		ifNotEmpty: [ | filter |
			filter := SettingPackageFilter new
			packages: self viewedPackages.
			self updateAccordingTo: filter].
	self updateList
]

{ #category : 'initialization' }
SBLegacySearchToolbarPresenter >> changeSearchedText: aString [
	self searchedText: aString.
	self applyFilters.
	^ true
]

{ #category : 'layout' }
SBLegacySearchToolbarPresenter >> defaultLayout [ 

	^ SpBoxLayout newLeftToRight 
		vAlignCenter;	
		add: searchLabelPresenter expand: false;
		add: searchToolbarPresenter expand: true fill: true;
		add: regexpCheckboxPresenter expand: false fill: false;
		yourself
]

{ #category : 'initialization' }
SBLegacySearchToolbarPresenter >> initializePresenters [

	searchLabelPresenter := self newLabel label: 'Search for:'; yourself.
	searchToolbarPresenter := self newDropList
			help: 'Hit return to accept';
			"items: nil;"
			yourself.
	regexpCheckboxPresenter := self newCheckBox 
		label: 'Regexp'; 
		help: 'Filter according to a regular expression';
		state: false; 
		yourself.
]

{ #category : 'accessing' }
SBLegacySearchToolbarPresenter >> regexpCheckboxPresenter [

	^ regexpCheckboxPresenter
]

{ #category : 'accessing' }
SBLegacySearchToolbarPresenter >> regexpCheckboxPresenter: anObject [

	regexpCheckboxPresenter := anObject
]

{ #category : 'accessing' }
SBLegacySearchToolbarPresenter >> searchLabelPresenter [

	^ searchLabelPresenter
]

{ #category : 'accessing' }
SBLegacySearchToolbarPresenter >> searchLabelPresenter: anObject [

	searchLabelPresenter := anObject
]

{ #category : 'accessing' }
SBLegacySearchToolbarPresenter >> searchToolbarPresenter [

	^ searchToolbarPresenter
]

{ #category : 'accessing' }
SBLegacySearchToolbarPresenter >> searchToolbarPresenter: anObject [

	searchToolbarPresenter := anObject
]

{ #category : 'initialization' }
SBLegacySearchToolbarPresenter >> searchedTextList [
	"Keep a list of previously entered filtering tokens"

	^ searchedTextList 
		ifNil: [ searchedTextList := OrderedCollection new ]
]
