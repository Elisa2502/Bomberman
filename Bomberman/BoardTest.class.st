Class {
	#name : #BoardTest,
	#superclass : #TestCase,
	#instVars : [
		'position'
	],
	#category : #'Bomberman-test'
}

{ #category : #tests }
BoardTest >> testCellAtXY [
    | game gridConfigureGrid2 actualBoard |
    game := GameBoard new.
    game configureGrid22.

    gridConfigureGrid2 := { {WallCellState. SimpleCellState. WallCellState. WallCellState. BreakableCellState. BreakableCellState. WallCellState. SimpleCellState.  }.
                  				{SimpleCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState }.
                  				{WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. }.
                  				{WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. }.
                 				{WallCellState. WallCellState.  BreakableCellState. BreakableCellState. SimpleCellState. SimpleCellState. BreakableCellState. WallCellState. }.
                  				{WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. }.
                  				{WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState. }.
                  				{WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }.}.

    actualBoard := game board.

    1 to: game height do: [ :rowIndex |
        (gridConfigureGrid2 at: rowIndex) withIndexDo: [ :cellClass :colIndex |
            | expectedCell actualCell |
            expectedCell := game cellX: colIndex Y: rowIndex.
            actualCell := (actualBoard at: ((rowIndex - 1) * game height + colIndex)).
            
            self assert: actualCell equals:  expectedCell.
        ].
    ].

]

{ #category : #tests }
BoardTest >> testPopulateBoard [

	| game gridConfigureGrid2 actualBoard |
	game := GameBoard new.
	

	gridConfigureGrid2 := { {WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState.  }.
               {WallCellState. SimpleCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState}.
               {WallCellState. SimpleCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
               {WallCellState. SimpleCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
               {WallCellState. SimpleCellState.  BreakableCellState. BreakableCellState. SimpleCellState. SimpleCellState. BreakableCellState. WallCellState.}.
               {WallCellState. SimpleCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
               {WallCellState. SimpleCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState.}.
               {WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. }. 
                 }.
			
	game configureGrid22.
	actualBoard := game board.

	1 to: game height do: [ :rowIndex |
		(gridConfigureGrid2 at: rowIndex) withIndexDo: [ :cellClass :colIndex |
			| actualCellInBoard cell |
			cell := Cell new.
			cell initialize: colIndex @ rowIndex state: cellClass new.

			actualCellInBoard := game cellX: colIndex Y: rowIndex.

			self assert: actualCellInBoard state class equals: cell state class ] ]
]
