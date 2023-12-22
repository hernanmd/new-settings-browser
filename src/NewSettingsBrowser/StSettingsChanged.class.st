Class {
	#name : 'StSettingsChanged',
	#superclass : 'Announcement',
	#instVars : [
		'setting',
		'value'
	],
	#category : 'NewSettingsBrowser-Model',
	#package : 'NewSettingsBrowser',
	#tag : 'Model'
}

{ #category : 'accessing' }
StSettingsChanged >> aspect: aThemeSettings value: aColor [ 

	setting := aThemeSettings.
	value := aColor.
]
