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

{ #category : #initialization }
GameBoard >> cellRepresentationFor: aCell [
    "Retourne une représentation visuelle pour la cellule donnée."

    | representation |
    representation := aCell display.

    "Utilisation de caractères spéciaux pour créer une apparence tridimensionnelle"
    (representation = 'Wall') ifTrue: [^ '█'].
    (representation = 'Empty') ifTrue: [^ ' '].
    (representation = 'BreakableWall') ifTrue: [^ '░'].

    ^ ' '.
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

        grid := { {WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState}.
                   {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
                   {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
                   {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
                   {WallCellState. WallCellState.  BreakableCellState. BreakableCellState. SimpleCellState. SimpleCellState. BreakableCellState. WallCellState.}.
                   {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
                   {WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
                  {WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState.}.
				 }.

        self populateBoard.
]

{ #category : #initialization }
GameBoard >> createCellFromSymbol: aSymbol [
        "Crée une instance de cellule en fonction du symbole fourni."

        | cellClass |
        cellClass := {
            #('Wall') -> WallCellState.
            #('Empty') -> SimpleCellState.
            #('BreakableWall') -> BreakableCellState.
        } at: aSymbol ifAbsent: [ SimpleCellState ].

        ^ cellClass new.
]

{ #category : #initialization }
GameBoard >> displayBoard [

    board withIndexDo: [ :cell :index |
        | positionX positionY |
        positionX := cell position x.
        positionY := cell position y.

        Transcript nextPutAll: (self cellRepresentationFor: cell).
        (index \\ width = 0) ifTrue: [Transcript cr]. "Nouvelle ligne après chaque ligne complète"
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
                cell := Cell new.
					cell initialize: colIndex @ rowIndex state: SimpleCellState.
                board add: cell.
            ].
        ].
]

{ #category : #initialization }
GameBoard >> width [
 ^ width 
]

{ #category : #initialization }
GameBoard >> width: aNumber [
	width := aNumber
]
