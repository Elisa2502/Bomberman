Class {
	#name : #EntityVisitor,
	#superclass : #Object,
	#instVars : [
		'name',
		'position'
	],
	#category : #'Bomberman-entity'
}

{ #category : #initialization }
EntityVisitor >> initializeName: newName position: newPosition [
	self name: newName .
	self position: newPosition .
	
]

{ #category : #accessing }
EntityVisitor >> name [

	^ name
]

{ #category : #accessing }
EntityVisitor >> name: newName [
	name := newName .
]

{ #category : #accessing }
EntityVisitor >> position [

	^ position 
]

{ #category : #accessing }
EntityVisitor >> position: newPosition [ 
	position := newPosition 
]

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
