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
EntityVisitor >> visitBreakableCellState: myState atPos: cellPos [
	^ self subclassResponsibility 

]

{ #category : #visiting }
EntityVisitor >> visitSimpleCellState: state atPos: cellPos [
	^ self subclassResponsibility 
]

{ #category : #visiting }
EntityVisitor >> visitWallCellState: state atPos: cellPos [
	^ self subclassResponsibility 

]
