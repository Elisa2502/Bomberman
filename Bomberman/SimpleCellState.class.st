Class {
	#name : #SimpleCellState,
	#superclass : #CellState,
	#category : #'Bomberman-board'
}

{ #category : #visiting }
SimpleCellState >> accept: entity atPos: cellPos [

	^ entity visitSimpleCellState: self atPos: cellPos
]

{ #category : #accessing }
SimpleCellState >> display [

	^ 'Empty'
]
