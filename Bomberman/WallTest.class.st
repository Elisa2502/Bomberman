Class {
	#name : #WallTest,
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
WallTest >> setUp [

	| pos|
	super setUp.

	pos := Position new initializeX: 5 Y: 5.
	myWall := Wall new initialize: pos
]

{ #category : #tests }
WallTest >> testAcceptEntityPlayer [

	| entityOne entityTwo pos |
	pos := Position new initializeX: 0 Y: 0.

	entityOne := PlayerVisitor new
		             initializeName: 'PlayerTest1'
		             position: pos.
	entityTwo := PlayerVisitor new
		             initializeName: 'PlayerTest2'
		             position: pos.

	myWall accept: entityOne.
	entityTwo visitWallCell: myWall.

	self assert: entityOne position equals: entityTwo position
]
