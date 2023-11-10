Class {
	#name : #Case,
	#superclass : #Object,
	#instVars : [
		'position'
	],
	#category : #Bomberman
}

{ #category : #accessing }
Case >> position [

	^ position
]

{ #category : #accessing }
Case >> position: newPosition [

	position := newPosition
]
