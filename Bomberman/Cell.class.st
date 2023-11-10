Class {
	#name : #Cell,
	#superclass : #Object,
	#instVars : [
		'position'
	],
	#category : #'Bomberman-board'
}

{ #category : #accessing }
Cell >> position [

	^ position
]

{ #category : #accessing }
Cell >> position: newPosition [

	position := newPosition
]
