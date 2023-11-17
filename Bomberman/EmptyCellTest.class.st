Class {
	#name : #EmptyCellTest,
	#superclass : #TestCase,
	#instVars : [
		'position'
	],
	#classVars : [
		'myWall'
	],
	#category : #'Bomberman-test'
}

{ #category : #running }
EmptyCellTest >> setUp [

	| pos|
	super setUp.

	pos := Position new initializeX: 5 Y: 5.
	myWall := BreakableWall new initialize: pos
]

{ #category : #tests }
EmptyCellTest >> testAcceptEntityPlayer [

	| entityOne entityTwo pos |
	pos := Position new initializeX: 0 Y: 0.

	entityOne := PlayerVisitor new
		             initializeName: 'PlayerTest1'
		             position: pos.
	entityTwo := PlayerVisitor new
		             initializeName: 'PlayerTest2'
		             position: pos.

	myWall accept: entityOne.
	entityTwo visitBreakableWall: myWall.

	self assert: entityOne position equals: entityTwo position
]
