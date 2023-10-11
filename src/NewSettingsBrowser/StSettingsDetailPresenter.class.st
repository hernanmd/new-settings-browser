Class {
	#name : 'StSettingsDetailPresenter',
	#superclass : 'SpPresenter',
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'layout' }
StSettingsDetailPresenter >> defaultLayout [

	| boxLayout |
	boxLayout := SpBoxLayout newVertical.
	boxLayout spacing: 10.
	^ SpScrollableLayout with: boxLayout
]
