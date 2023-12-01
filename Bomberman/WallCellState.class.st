Class {
	#name : #WallCellState,
	#superclass : #CellState,
	#category : #'Bomberman-board'
}

{ #category : #accessing }
WallCellState class >> color [

	^ Color black
]

{ #category : #visiting }
WallCellState >> accept: entity atPos: cellPos [

	^ entity visitWallCellState: self atPos: cellPos
]

{ #category : #accessing }
WallCellState >> color [

	^ Color black
]

{ #category : #accessing }
WallCellState >> display [

	^ 'Wall'
]
