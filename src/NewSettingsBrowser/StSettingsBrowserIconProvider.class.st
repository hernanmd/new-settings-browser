Class {
	#name : 'StSettingsBrowserIconProvider',
	#superclass : 'SpPharoThemeIconProvider',
	#category : 'NewSettingsBrowser-IconProvider',
	#package : 'NewSettingsBrowser',
	#tag : 'IconProvider'
}

{ #category : 'accessing' }
StSettingsBrowserIconProvider >> iconNamed: aName ifAbsent: aBlock [

	(aName isNil or: [ (StSettingIcons respondsTo: aName) not ])
		ifTrue: [ ^ aBlock value ].

	 ^ StSettingIcons perform: aName
]
