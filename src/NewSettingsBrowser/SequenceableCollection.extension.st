Extension { #name : 'SequenceableCollection' }

{ #category : '*NewSettingsBrowser' }
SequenceableCollection >> asSettingPresenter: aSettingDeclaration [ 

	^ (StSettingDropListPresenterItem on: aSettingDeclaration)
		value: self;
		yourself
]
