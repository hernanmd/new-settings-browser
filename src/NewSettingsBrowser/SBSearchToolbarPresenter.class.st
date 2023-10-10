Class {
	#name : 'SBSearchToolbarPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'searchLabelPresenter',
		'searchToolbarPresenter',
		'regexpCheckboxPresenter',
		'searchedTextList'
	],
	#category : 'NewSettingsBrowser',
	#package : 'NewSettingsBrowser'
}

{ #category : 'initialization' }
SBSearchToolbarPresenter >> addToSearchedTextList: aString [

	(self searchedTextList includes: aString)
		ifFalse: [ 
			self searchedTextList size > 5 
				ifTrue: [ self searchedTextList removeFirst ].
		self searchedTextList add: aString ]
]

{ #category : 'initialization' }
SBSearchToolbarPresenter >> applyFilters [

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
SBSearchToolbarPresenter >> changeSearchedText: aString [
	self searchedText: aString.
	self applyFilters.
	^ true
]

{ #category : 'layout' }
SBSearchToolbarPresenter >> defaultLayout [ 

	^ SpBoxLayout newLeftToRight 
		vAlignCenter;	
		add: searchLabelPresenter expand: false;
		add: searchToolbarPresenter expand: true fill: true;
		add: regexpCheckboxPresenter expand: false fill: false;
		yourself
]

{ #category : 'initialization' }
SBSearchToolbarPresenter >> initializePresenters [

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
SBSearchToolbarPresenter >> regexpCheckboxPresenter [

	^ regexpCheckboxPresenter
]

{ #category : 'accessing' }
SBSearchToolbarPresenter >> regexpCheckboxPresenter: anObject [

	regexpCheckboxPresenter := anObject
]

{ #category : 'accessing' }
SBSearchToolbarPresenter >> searchLabelPresenter [

	^ searchLabelPresenter
]

{ #category : 'accessing' }
SBSearchToolbarPresenter >> searchLabelPresenter: anObject [

	searchLabelPresenter := anObject
]

{ #category : 'accessing' }
SBSearchToolbarPresenter >> searchToolbarPresenter [

	^ searchToolbarPresenter
]

{ #category : 'accessing' }
SBSearchToolbarPresenter >> searchToolbarPresenter: anObject [

	searchToolbarPresenter := anObject
]

{ #category : 'initialization' }
SBSearchToolbarPresenter >> searchedTextList [
	"Keep a list of previously entered filtering tokens"

	^ searchedTextList 
		ifNil: [ searchedTextList := OrderedCollection new ]
]
