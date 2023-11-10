Class {
	#name : #Case,
	#superclass : #Object,
	#instVars : [
		'position'
	],
	#category : #'Bomberman-board'
}

{ #category : #accessing }
Case >> position [

	^ position
]

{ #category : #accessing }
Case >> position: newPosition [

	position := newPosition
]
