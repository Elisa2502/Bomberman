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
BombCellState >> explode: cell [
	"""The bomb explodes"""
	cell state: SimpleCellState new.
	
]

{ #category : #accessing }
BombCellState >> initialize [
	"""inialize a bomb"""
	super initialize.
	self countdown: 2 .
	
	
]

{ #category : #'as yet unclassified' }
BombCellState >> startCountdown: cell [
	"""Start countdown before explodes"""
[ countdown to: 0 by: -1 do: [ :i |
		(Delay forSeconds: 1) wait. 
		]. self explode: cell. 
	] fork.
]
