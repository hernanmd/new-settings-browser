Class {
	#name : 'StSettingsAbstracPresenter',
	#superclass : 'SpPresenter',
	#category : 'NewSettingsBrowser-UI',
	#package : 'NewSettingsBrowser',
	#tag : 'UI'
}

{ #category : 'accessing' }
StSettingsAbstracPresenter >> settingsTree [
	"Answer the receiver's <StSettingsTree>, the settings model"

	^ self application settingsTree.
]
