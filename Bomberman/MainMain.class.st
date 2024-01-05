Class {
	#name : #MainMain,
	#superclass : #Object,
	#instVars : [
		'board',
		'player',
		'view'
	],
	#category : #'Bomberman-controleur'
}

{ #category : #'as yet unclassified' }
MainMain >> downEvent [
	"""Effect for down event"""
	|posPlayer cellPlayer newCell posNewCell|
	
	posPlayer := player position.
	cellPlayer := board cellX: (posPlayer x) Y: (posPlayer y).
	
	newCell := board cellX: (posPlayer x + 1) Y: (posPlayer y).
	posNewCell := Position new.
	posNewCell initializeX: posPlayer x + 1 Y: posPlayer y.
	
	(newCell state) accept: player atPos: (posNewCell).
	
	self synchBoard.
	view show.
]

{ #category : #accessing }
MainMain >> initialize [ 
	"""Initialize controler"""
	|position|
	super initialize.
	
	board := GameBoard new .
	board initialize .
	
	position := Position new.
	position initializeX: 1 Y: 1.
	player := PlayerVisitor new .
	player initializeName: 'Player' position: position.
	
	view := WindowIHM new .
	view initialize .
	
	"""MainEvent new initialize."""
	
	self synchBoard .
	
	
	
	
]

{ #category : #'as yet unclassified' }
MainMain >> leftEvent [
	"""Effect for left event"""
	|posPlayer cellPlayer newCell posNewCell|
	
	posPlayer := player position.
	cellPlayer := board cellX: (posPlayer x) Y: (posPlayer y).
	
	newCell := board cellX: (posPlayer x) Y: (posPlayer y - 1).
	posNewCell := Position new.
	posNewCell initializeX: posPlayer x Y: posPlayer y - 1.
	
	(newCell state) accept: player atPos: (posNewCell).
	
	self synchBoard.
	view show.
]

{ #category : #accessing }
MainMain >> main [ 
	"""Main for play"""
	
	self initialize.
	view show.
	
	view when: BlKeyUpEvent 
		do: [ :event | self manageEvent: event ].
	
	
]

{ #category : #initialization }
MainMain >> manageEvent: anEvent [
	"""Manage event for good effect"""
	| key |
   key := anEvent key asString asUppercase.
	key := key substrings second.
	
	(key = 'UP') ifTrue: [ ^ self upEvent. ].
	(key = 'DOWN') ifTrue: [ ^ self downEvent. ].
	(key = 'LEFT') ifTrue: [ ^ self leftEvent. ].
	(key = 'RIGHT') ifTrue: [ ^ self rightEvent. ].
	(key = 'A') ifTrue: [ ^ self placeBombEvent ].
		
	
]

{ #category : #'as yet unclassified' }
MainMain >> placeBombEvent [ 
	|posPlayer cellPlayer posCell|
	
	posPlayer := player position.
	cellPlayer := board cellX: (posPlayer x) Y: (posPlayer y).
	posCell := Position new.
	posCell initializeX: posPlayer x Y: posPlayer y .
	
	cellPlayer state: BombCellState new.
	(cellPlayer state) accept: player atPos: (posCell).
	
	self synchBoard.
	view show.
]

{ #category : #'as yet unclassified' }
MainMain >> rightEvent [
	"""Effect for right event"""
	|posPlayer cellPlayer newCell posNewCell|
	
	posPlayer := player position.
	cellPlayer := board cellX: (posPlayer x) Y: (posPlayer y).
	
	newCell := board cellX: (posPlayer x) Y: (posPlayer y + 1).
	posNewCell := Position new.
	posNewCell initializeX: posPlayer x Y: posPlayer y + 1.
	
	(newCell state) accept: player atPos: (posNewCell).
	
	self synchBoard.
	view show.
]

{ #category : #'as yet unclassified' }
MainMain >> synchBoard [ 
	"""synch back board with view board"""
	|ligne colonne cell index posPlayerX posPlayerY|
	
	ligne := board width.
	colonne := board height.
	0 to: (ligne - 1) do: [ :i | 
		0 to: (colonne - 1) do: [ :j |
			cell := board cellX: i Y: j.
			index := (i * colonne) + (j + 1).
			(view grid children at:index) background: (cell color).
		]. 
	].
	
	posPlayerX := player position x.
	posPlayerY := player position y.
	index := (posPlayerX * colonne) + posPlayerY + 1.
	(view grid children at: index) background: (player color).

	
]

{ #category : #accessing }
MainMain >> upEvent [ 
	"""Effect for up event"""
	|posPlayer cellPlayer newCell posNewCell|
	
	posPlayer := player position.
	cellPlayer := board cellX: (posPlayer x) Y: (posPlayer y).
	
	newCell := board cellX: (posPlayer x - 1) Y: (posPlayer y).
	posNewCell := Position new.
	posNewCell initializeX: posPlayer x - 1 Y: posPlayer y.
	
	(newCell state) accept: player atPos: (posNewCell).
	
	self synchBoard.
	view show.
]
