Class {
	#name : #BreakableWall,
	#superclass : #Cell,
	#category : #'Bomberman-board'
}

{ #category : #visiting }
BreakableWall >> accept: entity [

	^ entity visitBreakableWall: self
]

{ #category : #accessing }
BreakableWall >> display [

	^ 'BreakableWall'
]
