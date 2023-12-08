Class {
	#name : #BoardTest,
	#superclass : #TestCase,
	#instVars : [
		'position'
	],
	#category : #'Bomberman-test'
}

{ #category : #tests }
BoardTest >> testPopulateBoard [
    | game gridConfigureGrid2 actualBoard |
    game := GameBoard new.
    game configureGrid2.

    gridConfigureGrid2 := {
        { WallCellState. SimpleCellState. WallCellState. WallCellState. BreakableCellState. BreakableCellState. WallCellState. SimpleCellState }.
        { SimpleCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState }.
        { WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState }.
        { WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState }.
        { WallCellState. WallCellState. BreakableCellState. BreakableCellState. SimpleCellState. SimpleCellState. BreakableCellState. WallCellState }.
        { WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState }.
        { WallCellState. WallCellState. SimpleCellState. SimpleCellState. BreakableCellState. BreakableCellState. BreakableCellState. WallCellState }.
        { WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState. WallCellState }.
    }.

    actualBoard := game board.
	
    gridConfigureGrid2 withIndexDo: [ :rowIndex :row |
        row withIndexDo: [ :cellClass :colIndex |
	
            | expectedState actualCell |
            expectedState := cellClass new.
            actualCell := game cellX: rowIndex  Y: colIndex. 

            self assert: (actualCell state class equals: expectedState class).
        ].
    ].

]
