Class {
	#name : 'StSettingSHStyleButtonColorPresenterItem',
	#superclass : 'StSettingSHStyleButtonPresenterItem',
	#category : 'NewSettingsBrowser-Widgets',
	#package : 'NewSettingsBrowser',
	#tag : 'Widgets'
}

{ #category : 'initialization' }
StSettingSHStyleButtonColorPresenterItem >> buttonColor: aColor [

	self setterPresenter color: aColor.
]
