Class {
	#name : #PlayerVisitor,
	#superclass : #EntityVisitor,
	#category : #'Bomberman-entity'
}

{ #category : #initialization }
PlayerVisitor >> initialize [ 
	
]

{ #category : #initialization }
PlayerVisitor >> initializeName: newName position: newPosition [
	self name: newName .
	self position: newPosition .
	
]

{ #category : #accessing }
PlayerVisitor >> name: newName [
	name := newName .
]

{ #category : #accessing }
PlayerVisitor >> position: newPosition [ 
	position := newPosition 
]

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
