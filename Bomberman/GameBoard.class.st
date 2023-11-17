Class {
	#name : #GameBoard,
	#superclass : #Object,
	#instVars : [
		'width',
		'height',
		'board'
	],
	#category : #'Bomberman-board'
}

{ #category : #initialization }
GameBoard >> Width [
 ^ width 
]

{ #category : #initialization }
GameBoard >> board [
	^ board 
]

{ #category : #'as yet unclassified' }
GameBoard >> configureGrid [
	
        1 to: width do: [ :col |
            1 to: height do: [ :row |
                | cell |
                cell := Cell new.
                cell position: col @ row.
                board add: cell.
            ].
        ].
]

{ #category : #initialization }
GameBoard >> height [
	^ height
]

{ #category : #initialization }
GameBoard >> height: aNumber [
	height := aNumber
]

{ #category : #initialization }
GameBoard >> initialize [
    board := OrderedCollection new.
    height := 8.
    width := 8.
    self configureGrid.

]

{ #category : #initialization }
GameBoard >> width: aNumber [
	width := aNumber
]
