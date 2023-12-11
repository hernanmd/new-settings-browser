Class {
	#name : 'BaselineOfNewSettingsBrowser',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfNewSettingsBrowser',
	#package : 'BaselineOfNewSettingsBrowser'
}

{ #category : 'baselines' }
BaselineOfNewSettingsBrowser >> baseline: spec [
  <baseline>
	spec
		for: #(common)
		do: [ 
			spec
				baseline: 'ColorPicker' with: [ spec repository: 'github://pharo-graphics/ColorPicker/src' ].
			spec 
				package: 'NewSettingsBrowser'        with: [ spec requires: #(ColorPicker) ];
				package: 'NewSettingsBrowser-Tests'	with: [ spec requires: #(NewSettingsBrowser) ].
			spec 
				group: 'Core' 						with: #('NewSettingsBrowser');
				group: 'Tests' 						with: #('NewSettingsBrowser' 'NewSettingsBrowser-Tests');
				group: 'default' 					with: #('Core' 'Tests') ]
]
