"
It represents a setting category page with setting sections and settings. The page was selected from `StSettingsCategoriesPresenter` and it matches a `StSettingsCategoryItemPresenter`.

"
Class {
	#name : 'StSettingsPagePresenter',
	#superclass : 'StSettingsAbstracPresenter',
	#instVars : [
		'pageTitle',
		'settingsBox'
	],
	#category : 'NewSettingsBrowser-UI',
	#package : 'NewSettingsBrowser',
	#tag : 'UI'
}

{ #category : 'adding' }
StSettingsPagePresenter >> addToSettingsBox: aPresenter [

	settingsBox 
		add: (self instantiate: aPresenter presenterClass on: aPresenter)
		expand: false
]

{ #category : 'initialization' }
StSettingsPagePresenter >> defaultInputPort [ 

	^ SpModelPort newPresenter: self

]

{ #category : 'layout' }
StSettingsPagePresenter >> defaultLayout [ 

	^ SpBoxLayout newTopToBottom 
		add: pageTitle expand: false;
		add: (SpScrollableLayout with: (settingsBox := SpBoxLayout newTopToBottom spacing: 10));
		yourself
]

{ #category : 'initialization' }
StSettingsPagePresenter >> initializePresenters [ 

	pageTitle := self newLabel.
	self layout: self defaultLayout.

]

{ #category : 'accessing - model' }
StSettingsPagePresenter >> setModel: aNode [ 

	pageTitle 
		label: aNode label;
		addStyle: 'pageTitle'.
	
	settingsBox removeAll.
	self updatePresenterTree: aNode level: 1.
]

{ #category : 'accessing' }
StSettingsPagePresenter >> updatePresenterTree: aStSettingNode level: anInteger [ 

	aStSettingNode allChildren do: [ : aSettingNode | 
		| nodePresenter |

		nodePresenter := self instantiate: aSettingNode presenterClass on: aSettingNode.
		nodePresenter sectionTitleStyle: 'sectionTitleL' , anInteger asString.	
		settingsBox 
			add: nodePresenter
			expand: false.
		self updatePresenterTree: aSettingNode level: anInteger + 1 ]
]
