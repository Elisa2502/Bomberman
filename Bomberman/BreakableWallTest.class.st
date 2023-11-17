Class {
	#name : #BreakableWallTest,
	#superclass : #TestCase,
	#instVars : [
		'position'
	],
	#category : #'Bomberman-test'
}

{ #category : #visiting }
BreakableWallTest >> acceptEntityPlayerTest [

|entity|

]

{ #category : #running }
BreakableWallTest >> setUp [

	| pos |
	super setUp.

	pos := Position new initializeX: 5 Y: 5.
	BreakableWall new initialize: pos
]
