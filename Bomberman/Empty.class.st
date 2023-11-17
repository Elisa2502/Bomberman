Class {
	#name : #Empty,
	#superclass : #Cell,
	#category : #'Bomberman-board'
}

{ #category : #visiting }
Empty >> accept: entity [

	^ entity visitEmptyCell: self
]

{ #category : #accessing }
Empty >> display [

	^ 'Empty'
]
