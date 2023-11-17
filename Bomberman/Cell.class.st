Class {
	#name : #Cell,
	#superclass : #Object,
	#instVars : [
		'position'
	],
	#category : #'Bomberman-board'
}

{ #category : #visiting }
Cell >> accept: entity [

	^ self subclassResponsibility
]

{ #category : #accessing }
Cell >> display [

	^ self subclassResponsibility
]

{ #category : #initialization }
Cell >> initialize: newPosition [

	self position: position
]

{ #category : #accessing }
Cell >> position [

	^ position
]

{ #category : #accessing }
Cell >> position: newPosition [

	position := newPosition
]
