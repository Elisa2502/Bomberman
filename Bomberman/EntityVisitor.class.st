Class {
	#name : #EntityVisitor,
	#superclass : #Object,
	#instVars : [
		'name',
		'position'
	],
	#category : #'Bomberman-entity'
}

{ #category : #visiting }
EntityVisitor >> visitBreakableWall: cell [

]

{ #category : #visiting }
EntityVisitor >> visitEmptyCell: cell [
]

{ #category : #visiting }
EntityVisitor >> visitWallCell: cell [

]
