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
	
	view := WindowIHM new .
	view initialize .
	
	self synchBoard .
	
	position := Position new.
	position initializeX: 0 Y: 0.
	player := PlayerVisitor new .
	player initializeName: 'Player' position: position.
	
	
	
	
]

{ #category : #accessing }
MainMain >> main [ 
	"""Main for play"""
	self initialize.
	view show.
	"""[true] whileTrue: [
    
]."""
	
	
	
	
]

{ #category : #'as yet unclassified' }
MainMain >> synchBoard [ 
	"""synch back board with view board"""
	|ligne colonne cell ctp|
	
	ligne := board width.
	colonne := board height.
	ctp := 1.
	1 to: (ligne) do: [ :i | 
		1 to: (colonne) do: [ :j |
			cell := (board cellX: i Y: j).
			"""(view grid children at: ctp) background: (cell color)."""
			(view grid at: (i@j)) background: (cell color).
			ctp := ctp + 1.
		]. 
	].
]
