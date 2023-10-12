Class {
	#name : 'SpRadixThemeIconProvider',
	#superclass : 'SpPharoThemeIconProvider',
	#category : 'NewSettingsBrowser-IconProvider',
	#package : 'NewSettingsBrowser',
	#tag : 'IconProvider'
}

{ #category : 'accessing' }
SpRadixThemeIconProvider >> iconNamed: aName ifAbsent: aBlock [

	aName ifNil: [ ^ aBlock value ].

	^ RadixIcons perform: aName
]
