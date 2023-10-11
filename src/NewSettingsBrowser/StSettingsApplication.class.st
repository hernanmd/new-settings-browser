Class {
	#name : 'StSettingsApplication',
	#superclass : 'SpApplication',
	#category : 'NewSettingsBrowser-Modernized',
	#package : 'NewSettingsBrowser',
	#tag : 'Modernized'
}

{ #category : 'world menu' }
StSettingsApplication class >> menuSettingsBrowserCommandOn: aBuilder [
	<worldMenu>

	(aBuilder item: #'New Settings Browser')
		parent: #Tools;
		label: 'New Settings Browser';
		action: [ self new run ];
		icon: (self iconNamed: self taskbarIconName);
		help: 'New Settings Browser';
		order: 100		
]

{ #category : 'instance creation' }
StSettingsApplication class >> open [
	<script>

	self new start.
]

{ #category : 'running' }
StSettingsApplication >> start [
	" Private - See superimplementor's comment "

	(StSettingsMainPresenter newApplication: self) open
]
