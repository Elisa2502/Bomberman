Class {
	#name : #CellState,
	#superclass : #Object,
	#category : #'Bomberman-board'
}

{ #category : #visiting }
CellState >> accept: entity atPos: cellPos [

	^ self subclassResponsibility
]

{ #category : #accessing }
CellState >> color [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
CellState >> stateAfterExplode [

	^ self subclassResponsibility
]
