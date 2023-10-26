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
	
	^ (StSettingButtonPresenterItem on: aSettingDeclaration)
		buttonLabel: info;
		buttonFont: self realFont;
		buttonAction: [ aSettingDeclaration getFont ];
		yourself.
]
