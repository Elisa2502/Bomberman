Class {
	#name : #CellState,
	#superclass : #Object,
	#category : #'Bomberman-board'
}

{ #category : #accessing }
CellState >> color [
	^ self subclassResponsibility
]
