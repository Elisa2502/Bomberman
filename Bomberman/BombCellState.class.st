Class {
	#name : #BombCellState,
	#superclass : #CellState,
	#instVars : [
		'countdown',
		'observer',
		'posObs'
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

{ #category : #accessing }
BombCellState >> initialize [
	"""inialize a bomb"""
	super initialize.
	self countdown: 2 .
	
	
]

{ #category : #accessing }
BombCellState >> notifyObserver [

	observer updateExplode: posObs
]

{ #category : #accessing }
BombCellState >> observer [

	^ observer
]

{ #category : #accessing }
BombCellState >> observer: obs [

	observer := obs
]

{ #category : #accessing }
BombCellState >> observer: obs atPos: pos [ 

	observer := obs.
	posObs := pos
]

{ #category : #accessing }
BombCellState >> posObs [

	^ posObs
]

{ #category : #'as yet unclassified' }
BombCellState >> startCountdown: cell [
	"""Start countdown before explodes"""
[ countdown to: 0 by: -1 do: [ :i |
		(Delay forSeconds: 1) wait. 
		]. self notifyObserver. 
	] fork.
]

{ #category : #'as yet unclassified' }
BombCellState >> stateAfterExplode [

	^ SimpleCellState new
]
