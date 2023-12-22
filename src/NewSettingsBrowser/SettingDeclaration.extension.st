Extension { #name : 'SettingDeclaration' }

{ #category : '*NewSettingsBrowser' }
SettingDeclaration >> asSettingPresenter [
	"Answer an appropriate <SpPresenter> container for the receiver's value"

	^ self precondition value 
		ifTrue: [ self default asSettingPresenter: self ]
		ifFalse: [ SpNullPresenter new ]
]

{ #category : '*NewSettingsBrowser' }
SettingDeclaration >> getColor [

	(SpPresenter new instantiate: SpColorPickerWindow on: self)
		whenColorChangedDo: [ : c | 
			| changedAspect |
			changedAspect := self target perform: self targetSelector.
			changedAspect perform: self setSelector with: c.
			self announcer announce: (StSettingsChanged new aspect: changedAspect value: c) ];
		open
]
