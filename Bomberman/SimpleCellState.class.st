Class {
	#name : #SimpleCellState,
	#superclass : #CellState,
	#category : #'Bomberman-board'
}

{ #category : #accessing }
SimpleCellState class >> color [ 
	^ Color pink
]

{ #category : #visiting }
SimpleCellState >> accept: entity atPos: cellPos [
	
	^ entity visitSimpleCellState: self atPos: cellPos.
]

{ #category : #accessing }
SimpleCellState >> color [
	^ Color pink
]

{ #category : #accessing }
SimpleCellState >> display [

	^ 'Empty'
]

{ #category : #'as yet unclassified' }
SimpleCellState >> stateAfterExplode [

	^ self
]
