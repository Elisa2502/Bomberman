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
]

{ #category : #accessing }
Cell >> display [

	^ self subclassResponsibility
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
