Class {
	#name : 'StSettingsBrowserIconProvider',
	#superclass : 'SpPharoThemeIconProvider',
	#category : 'NewSettingsBrowser-IconProvider',
	#package : 'NewSettingsBrowser',
	#tag : 'IconProvider'
}

{ #category : 'accessing' }
StSettingsBrowserIconProvider >> iconNamed: aName ifAbsent: aBlock [

	aName ifNil: [ ^ aBlock value ].

	^ StSettingIcons perform: aName
]
