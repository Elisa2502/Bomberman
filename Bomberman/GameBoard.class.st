Class {
	#name : #GameBoard,
	#superclass : #Object,
	#instVars : [
		'width',
		'height',
		'board',
		'grid'
	],
	#category : #'Bomberman-board'
}

{ #category : #initialization }
GameBoard >> board [
	^ board 
]

{ #category : #initialization }
GameBoard >> board: anBoard [
	 board := anBoard  
]

{ #category : #accessing }
GameBoard >> cell: idx [
	^ (board at: idx).
]

{ #category : #'as yet unclassified' }
GameBoard >> cellX: abs Y: ord [
	|index|
	index := (abs * self height) + (ord + 1).
	^ (board at: index).
]

{ #category : #'as yet unclassified' }
GameBoard >> configureGrid [
        1 to: width do: [ :col |
            1 to: height do: [ :row |
                | cell |
                cell := Cell new.
                cell position: col @ row.
                board add: cell.
            ].
        ].
]

{ #category : #'as yet unclassified' }
GameBoard >> configureGrid2 [ 

        grid := { {WallCellState. SimpleCellState. WallCellState. WallCellState. BreakableCellState. BreakableCellState. WallCellState. SimpleCellState.  }.
                  {SimpleCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState }.
                  {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. }.
                  {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. }.
                  {WallCellState. WallCellState.  BreakableCellState. BreakableCellState. SimpleCellState. SimpleCellState. BreakableCellState. WallCellState. }.
                  {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. }.
                  {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. }.
                  {WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }. 
				 }.

        self populateBoard.
]

{ #category : #'as yet unclassified' }
GameBoard >> configureGrid22 [

	  grid := { {WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState.  }.
               {WallCellState. SimpleCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState}.
               {WallCellState. SimpleCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
               {WallCellState. SimpleCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
               {WallCellState. SimpleCellState.  BreakableCellState. BreakableCellState. SimpleCellState. SimpleCellState. BreakableCellState. WallCellState.}.
               {WallCellState. SimpleCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
               {WallCellState. SimpleCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
               {WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }. 
				 }.

        self populateBoard.
]

{ #category : #'as yet unclassified' }
GameBoard >> configureGrid3 [ 

        grid := { {WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }.
                   {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState.}.
                   {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState.}.
                   {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState.}.
                   {WallCellState. WallCellState.  BreakableCellState. BreakableCellState. SimpleCellState. SimpleCellState. BreakableCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState.}.
                   {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState.}.
                   {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState.}.
                  {WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState.}.
						{WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }.
						{WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }.
						{WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }.
						{WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }.
						{WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }.
						{WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }.
						{WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }.
						{WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }.
				 }.

        self populateBoard.
]

{ #category : #'as yet unclassified' }
GameBoard >> displayBoard [
    "Affiche le contenu actuel du plateau sous forme de matrice"
	
    1 to: 8 do: [ :rowIndex |
        1 to:  8 do: [ :colIndex |
            | cell |
            cell := (board at: ((rowIndex - 1) * 8) + colIndex).
            Transcript show: (cell state printString), ' '.
        ].
        Transcript cr.
    ].


]

{ #category : #initialization }
GameBoard >> grid: aGrid [
	grid := aGrid
]

{ #category : #initialization }
GameBoard >> height [
	^ height
]

{ #category : #initialization }
GameBoard >> height: aNumber [
	height := aNumber
]

{ #category : #initialization }
GameBoard >> initialize [
    board := OrderedCollection new.
    height := 8.
    width := 8.
    self configureGrid22.

]

{ #category : #initialization }
GameBoard >> populateBoard [

	grid withIndexDo: [ :row :rowIndex |
		row  withIndexDo: [ :cellClass :colIndex |
			| cell |
			cell := Cell new.
			cell initialize: colIndex @ rowIndex  state: cellClass new.
			board add: cell.
		]
	]

]

{ #category : #initialization }
GameBoard >> width [
 ^ width 
]

{ #category : #initialization }
GameBoard >> width: aNumber [
	width := aNumber
]
