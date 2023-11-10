Class {
	#name : #Position,
	#superclass : #Object,
	#instVars : [
		'x',
		'y'
	],
	#category : #'Bomberman-board'
}

{ #category : #accessing }
Position >> x [

	^ x
]

{ #category : #accessing }
Position >> x: newValue [

	x := newValue 
]

{ #category : #accessing }
Position >> y [

	^ y
]

{ #category : #accessing }
Position >> y: newValue [

	y := newValue 
]
