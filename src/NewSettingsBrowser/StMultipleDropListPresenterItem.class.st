"
This presenter wraps those setting items which should present two drop lists. For instance, the case of syntax highlighting settings, where one could chose a `Color` and a text style (bold, normal, etc).


"
Class {
	#name : 'StMultipleDropListPresenterItem',
	#superclass : 'StSettingPresenterItem',
	#instVars : [
		'fontStylePresenter',
		'colorSettingItemPresenter'
	],
	#category : 'NewSettingsBrowser-Widgets',
	#package : 'NewSettingsBrowser',
	#tag : 'Widgets'
}

{ #category : 'initialization' }
StMultipleDropListPresenterItem >> initializePresenters [ 

	| modelDefault |
	super initializePresenters.
	
	modelDefault := self model default.
	modelDefault color
		ifNil: [ modelDefault color: Color transparent ].
	colorSettingItemPresenter := modelDefault color asSettingPresenter: model.

	fontStylePresenter := self newDropList 
		items: #(#bold #italic #normal 'bold italic' );
		selectItem: modelDefault emphasis;		
		yourself.
]

{ #category : 'accessing' }
StMultipleDropListPresenterItem >> value: aSHStyleElement [ 

	self flag: #delete.
	colorSettingItemPresenter 
		buttonColor: aSHStyleElement color.
	fontStylePresenter selectItem: aSHStyleElement emphasis.

]
