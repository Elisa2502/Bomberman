Class {
	#name : #PlayerVisitor,
	#superclass : #EntityVisitor,
	#category : #'Bomberman-entity'
}

{ #category : #visiting }
PlayerVisitor >> visitBreakableWall: cell [
	"You should not pass if I not break"
]

{ #category : #visiting }
PlayerVisitor >> visitEmptyCell: cell [
	"You should pass"
	self position: cell position .
]

{ #category : #visiting }
PlayerVisitor >> visitWallCell: cell [
	"You should not pass"
	
	
]
