Class {
	#name : #BreakableCellState,
	#superclass : #CellState,
	#category : #'Bomberman-board'
}

{ #category : #accessing }
BreakableCellState class >> color [ 

	^ Color lightGray
]

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

{ #category : #'as yet unclassified' }
BreakableCellState >> stateAfterExplode [

	^ SimpleCellState new
]
