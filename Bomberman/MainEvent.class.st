Class {
	#name : #MainEvent,
	#superclass : #BlElement,
	#category : #'Bomberman-controleur'
}

{ #category : #initialization }
MainEvent >> initialize [

	self
		addEventHandlerOn: BlKeyDownEvent
		do: [ :anEvent | self manageEvent: anEvent ]
]

{ #category : #initialization }
MainEvent >> manageEvent: anEvent [

	anEvent key name = #SPACE. "ifTrue: [ ^ self resetBoard ]."
	anEvent key name = #ESCAPE "ifTrue: [ ^ self space close ]."
	
	"#DOWN #UP #LEFT #RIGHT"
]
