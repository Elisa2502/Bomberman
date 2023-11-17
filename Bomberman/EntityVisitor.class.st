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
	^ self subclassResponsibility 

]

{ #category : #visiting }
EntityVisitor >> visitEmptyCell: cell [
	^ self subclassResponsibility 
]

{ #category : #visiting }
EntityVisitor >> visitWallCell: cell [
	^ self subclassResponsibility 

]
