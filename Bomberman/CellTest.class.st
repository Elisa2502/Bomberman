Class {
	#name : #CellTest,
	#superclass : #TestCase,
	#instVars : [
		'position',
		'state'
	],
	#classVars : [
		'myCell'
	],
	#category : #'Bomberman-test'
}

{ #category : #running }
CellTest >> setUp [

	| pos |
	super setUp.

	pos := Position new initializeX: 5 Y: 5.

	myCell := Cell new initialize: pos
]

{ #category : #tests }
CellTest >> testAcceptPlayerEntityBreakableCellState [

	| entityOne entityTwo pos myState |
	myState := BreakableCellState new.

	pos := Position new initializeX: 0 Y: 0.

	entityOne := PlayerVisitor new
		             initializeName: 'PlayerTest1'
		             position: pos.
	entityTwo := PlayerVisitor new
		             initializeName: 'PlayerTest2'
		             position: pos.

	myCell state: myState.
	myCell accept: entityOne.

	entityTwo visitBreakableCellState: myState atPos: myCell position.

	self assert: entityOne position equals: entityTwo position
]

{ #category : #tests }
CellTest >> testAcceptPlayerEntitySimpleCellState [

	| entityOne entityTwo pos myState |
	myState := SimpleCellState new.

	pos := Position new initializeX: 0 Y: 0.

	entityOne := PlayerVisitor new
		             initializeName: 'PlayerTest1'
		             position: pos.
	entityTwo := PlayerVisitor new
		             initializeName: 'PlayerTest2'
		             position: pos.

	myCell state: myState.
	myCell accept: entityOne.

	entityTwo visitSimpleCellState: myState atPos: myCell position.

	self assert: entityOne position equals: entityTwo position
]

{ #category : #tests }
CellTest >> testAcceptPlayerEntityWallCellState [

	| entityOne entityTwo pos myState |
	myState := WallCellState new.

	pos := Position new initializeX: 0 Y: 0.

	entityOne := PlayerVisitor new
		             initializeName: 'PlayerTest1'
		             position: pos.
	entityTwo := PlayerVisitor new
		             initializeName: 'PlayerTest2'
		             position: pos.

	myCell state: myState.
	myCell accept: entityOne.

	entityTwo visitWallCellState: myState atPos: myCell position.

	self assert: entityOne position equals: entityTwo position
]
