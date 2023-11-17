Class {
	#name : #BreakableWallTest,
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
BreakableWallTest >> setUp [

	| pos|
	super setUp.

	pos := Position new initializeX: 5 Y: 5.
	myWall := Empty new initialize: pos
]

{ #category : #visiting }
BreakableWallTest >> testAcceptEntityPlayer [

	| entityOne entityTwo pos |
	pos := Position new initializeX: 0 Y: 0.

	entityOne := PlayerVisitor new
		             initializeName: 'PlayerTest1'
		             position: pos.
	entityTwo := PlayerVisitor new
		             initializeName: 'PlayerTest2'
		             position: pos.

	myWall accept: entityOne.
	entityTwo visitEmptyCell: myWall.

	self assert: entityOne position equals: entityTwo position
]
