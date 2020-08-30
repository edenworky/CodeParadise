Class {
	#name : #CpLinkedContentView,
	#superclass : #CpView,
	#category : #'CodeParadise-WebApplication-Presentation-View'
}

{ #category : #'web resources' }
CpLinkedContentView class >> style [

	<webResource: #css>

	^ '* {
			box-sizing: border-box;
		}
		:host {
			display: inherit;
			cursor: pointer;
		}'
]

{ #category : #'web resources' }
CpLinkedContentView class >> template [

	<webResource: #html>

	^ '<slot></slot>'
]

{ #category : #'event handling' }
CpLinkedContentView >> handleClickEvent: aClickEvent [

	self serverAnnounce: CpLinkActivated
]