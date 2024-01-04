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
	|posPlayer cellPlayer newCell|
	CommandLineUIManager default alert: 'DOWN SELECTED'.
	
	posPlayer := player position.
	cellPlayer := board cellX: (posPlayer x) Y: (posPlayer y).
	newCell := board cellX: (posPlayer x) Y: (posPlayer y).
	(newCell state) accept: player atPos: (newCell position).
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
	CommandLineUIManager default alert: 'LEFT SELECTED'
]

{ #category : #accessing }
MainMain >> main [ 
	"""Main for play"""

	"""self initialize.
	view show."""
	
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
		
	
]

{ #category : #'as yet unclassified' }
MainMain >> rightEvent [
	"""Effect for right event"""
	CommandLineUIManager default alert: 'RIGHT SELECTED'
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
	
	"""index := (((player position) x) * colonne) + ((player position) y) + 1."""
	posPlayerX := player position x.
	posPlayerY := player position y.
	index := (posPlayerX * colonne) + posPlayerY + 1.
	(view grid children at: index) background: (player color).

	
]

{ #category : #accessing }
MainMain >> upEvent [ 
	"""Effect for up event"""
	CommandLineUIManager default alert: 'UP SELECTED'
]
