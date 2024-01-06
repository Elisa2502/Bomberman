Class {
	#name : #Cell,
	#superclass : #Object,
	#instVars : [
		'position',
		'state'
	],
	#category : #'Bomberman-board'
}

{ #category : #visiting }
Cell >> accept: entity [

	^ self state accept: entity atPos: self position
	
	"""|pos|
	pos := Position new.
	pos initializeX: 2 Y: 1. 

	^ self state accept: entity atPos: pos ."""
]

{ #category : #accessing }
Cell >> color [
	^ self state color
]

{ #category : #accessing }
Cell >> display [

	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Cell >> explode [

	self state: state stateAfterExplode
]

{ #category : #initialization }
Cell >> initialize: newPosition [

	self position: position
]

{ #category : #initialization }
Cell >> initialize: newPosition state: newState [

	self position: position.
	self state: newState
]

{ #category : #accessing }
Cell >> position [

	^ position
]

{ #category : #accessing }
Cell >> position: newPosition [

	position := newPosition
]

{ #category : #accessing }
Cell >> state [

	^ state
]

{ #category : #accessing }
Cell >> state: newState [

	state := newState
]
