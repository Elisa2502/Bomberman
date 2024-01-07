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

{ #category : #tests }
CellTest >> testExplodeCell [

	| testCell |
	testCell  := Cell new state: SimpleCellState new.
	
	"Une case simple reste une case simple lors de l'explosion"
	self assert: (testCell explode state class) equals: SimpleCellState new class.
	
	
	"Un mur qui se casse se transforme en une case simple lors de l'explosion"
	testCell state: BreakableCellState new.
	self assert: (testCell explode state class) equals: SimpleCellState new class.
	
	"Une bombe se transforme en une case simple lors de l'explosion"
	testCell state: BombCellState new.
	self assert: (testCell explode state class) equals: SimpleCellState new class.
	

	"Un mur reste un mur lors de l'explosion"
	testCell state: WallCellState new.
	self assert: (testCell explode state class) equals: WallCellState new class.
	





















]
