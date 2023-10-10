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
				package: 'NewSettingsBrowser';
				package: 'NewSettingsBrowser-Tests'	with: [ spec requires: #(NewSettingsBrowser) ].
			spec 
				group: 'Core' 						with: #('NewSettingsBrowser');
				group: 'Tests' 						with: #('NewSettingsBrowser' 'NewSettingsBrowser-Tests');
				group: 'default' 					with: #('Core' 'Tests') ]
]
