Extension { #name : 'PragmaSetting' }

{ #category : '*NewSettingsBrowser' }
PragmaSetting >> asSettingPresenter [
	"Answer an appropriate <SpPresenter> for the receiver"

	^ self label asPresenter
]
