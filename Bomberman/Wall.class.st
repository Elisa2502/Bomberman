Class {
	#name : #Wall,
	#superclass : #Cell,
	#category : #'Bomberman-board'
}

{ #category : #visiting }
Wall >> accept: entity [

	^ entity visitWallCell: self
]
