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

{ #category : #accessing }
MainMain >> initialize [ 
	"""Initialize controler"""
	|position|
	super initialize.
	
	board := GameBoard new .
	board initialize .
	
	position := Position new.
	position initializeX: 0 Y: 0.
	player := PlayerVisitor new .
	player initializeName: 'Player' position: position.
	
	view := WindowIHM new .
	view initialize .
	
	self synchBoard .
	
	
	
	
]

{ #category : #accessing }
MainMain >> main [ 
	"""Main for play"""
	self initialize.
	view show.
	"""[true] whileTrue: [
    yolo ?
]."""
	
	
	
	
]

{ #category : #'as yet unclassified' }
MainMain >> synchBoard [ 
	"""synch back board with view board"""
	|ligne colonne cell ctp index|
	
	ligne := board width.
	colonne := board height.
	ctp := 1.
	1 to: (ligne) do: [ :i | 
		1 to: (colonne) do: [ :j |
			cell := board cellX: i Y: j.
			index := ((i - 1) * colonne) + j.
			(view grid children at:ctp) background: (cell color).
			ctp := ctp + 1.
		]. 
	].
	index := (((player position x)) * colonne) + (player position y) + 1.
	(view grid children at: index) background: (player color).

	
]
