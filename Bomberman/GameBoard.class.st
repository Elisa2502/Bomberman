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
GameBoard >> Width [
 ^ width 
]

{ #category : #initialization }
GameBoard >> board [
	^ board 
]

{ #category : #initialization }
GameBoard >> board: anBoard [
	 board := anBoard  
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

        grid := { {Wall. Wall. Wall. Wall. Wall. Wall. Wall. Wall}.
                   {Wall. Wall. Empty. Empty. BreakableWall. BreakableWall. BreakableWall. Wall.}.
                   {Wall. Wall. Empty. Empty. BreakableWall. BreakableWall. BreakableWall. Wall.}.
                   {Wall. Wall. Empty. Empty. BreakableWall. BreakableWall. BreakableWall. Wall.}.
                   {Wall. Wall. Empty. Empty. BreakableWall. BreakableWall. BreakableWall. Wall.}.
                   {Wall. Wall. Empty. Empty. BreakableWall. BreakableWall. BreakableWall. Wall.}.
                   {Wall. Wall. Empty. Empty. BreakableWall. BreakableWall. BreakableWall. Wall.}.
                  {Wall. Wall. Empty. Empty. BreakableWall. BreakableWall. BreakableWall. Wall.}.
				 }.

        self populateBoard.
]

{ #category : #initialization }
GameBoard >> createCellFromSymbol: aSymbol [
        "Crée une instance de cellule en fonction du symbole fourni."

        | cellClass |
        cellClass := {
            #('Wall') -> Wall.
            #('Empty') -> Empty.
            #('BreakableWall') -> BreakableWall.
        } at: aSymbol ifAbsent: [ Empty ].

        ^ cellClass new.
]

{ #category : #initialization }
GameBoard >> displayBoard [
        "Affiche le contenu du tableau (board)."
			board do: [ :cell |
            Transcript show: (cell display); cr.
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
    self configureGrid2.

]

{ #category : #initialization }
GameBoard >> populateBoard [

         grid withIndexDo: [ :row :rowIndex |
            row withIndexDo: [ :cellClass :colIndex |
                | cell |
                cell := cellClass new.
                cell position: colIndex @ rowIndex.
                board add: cell.
            ].
        ].
]

{ #category : #initialization }
GameBoard >> width: aNumber [
	width := aNumber
]
