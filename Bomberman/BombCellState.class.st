Class {
	#name : #BombCellState,
	#superclass : #CellState,
	#instVars : [
		'countdown'
	],
	#category : #'Bomberman-board'
}

{ #category : #accessing }
BombCellState class >> color [ 

	^ Color red
]

{ #category : #visiting }
BombCellState >> accept: entity atPos: cellPos [

	^ entity visitBombCellState: self atPos: cellPos.
]

{ #category : #accessing }
BombCellState >> color [
	^ Color red
]

{ #category : #accessing }
BombCellState >> countdown: count [
	countdown := count.
]

{ #category : #'as yet unclassified' }
BombCellState >> explode [
	CommandLineUIManager default alert: 'EXPLODE'.
]

{ #category : #accessing }
BombCellState >> initialize [
	"""inialize a bomb"""
	super initialize.
	self countdown: 5 .
	
	
]

{ #category : #'as yet unclassified' }
BombCellState >> startCountdown [

	
]
