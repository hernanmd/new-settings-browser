Extension { #name : 'LogicalFont' }

{ #category : '*NewSettingsBrowser' }
LogicalFont >> asSettingPresenter: aSettingDeclaration [ 

	| info |

	info := String streamContents: [ : stream |
		stream 
			<< self realFont textStyleName;
			<< ' (';
			<< self realFont pointSize asString;
			<< ')' ].
	
	aSettingDeclaration parentName.
	^ StSettingButtonPresenterItem basicNew
		setModelBeforeInitialization: aSettingDeclaration;
		initialize;
		buttonLabel: info;
		buttonFont: self realFont;
		buttonAction: [ aSettingDeclaration getFont ];
		yourself.
]
