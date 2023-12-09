Class {
	#name : #MainEvent,
	#superclass : #BlElement,
	#category : #'Bomberman-controleur'
}

{ #category : #initialization }
MainEvent >> initialize [

	super initialize.
	self
		addEventHandlerOn: BlKeyDownEvent
		do: [ :anEvent | self manageEvent: anEvent ]
]

{ #category : #initialization }
MainEvent >> manageEvent: anEvent [
	CommandLineUIManager default alert: 'IN THE MANAGER'.
	anEvent key name = #SPACE ifTrue: [ ^ self spaceEvent].
	"anEvent key name = #ESCAPE ifTrue: [ ^ self space close ]."
	
	anEvent key name = #UP ifTrue: [ ^ self upEvent ].
	"#DOWN #UP #LEFT #RIGHT"
]

{ #category : #'as yet unclassified' }
MainEvent >> spaceEvent [

	CommandLineUIManager default alert: 'SPACE SELECTED'
]

{ #category : #accessing }
MainEvent >> upEvent [

	CommandLineUIManager default alert: 'UP SELECTED'
]
