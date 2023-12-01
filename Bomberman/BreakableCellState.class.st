Class {
	#name : #BreakableCellState,
	#superclass : #CellState,
	#category : #'Bomberman-board'
}

{ #category : #visiting }
BreakableCellState >> accept: entity atPos: cellPos [

	^ entity visitBreakableCellState: self atPos: cellPos
]

{ #category : #accessing }
BreakableCellState >> color [

	^ Color lightGray 
]

{ #category : #accessing }
BreakableCellState >> display [

	^ 'BreakableWall'
]
