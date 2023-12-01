Class {
	#name : #WindowIHM,
	#superclass : #BlOSpace,
	#instVars : [
		'grid'
	],
	#category : #'Bomberman-vue'
}

{ #category : #'examples - setup' }
WindowIHM >> cell [
	"""create one cell"""
	| element border|
	border := BlBorder paint: Color black .
	element := BlElement new
		           size: 50 @ 50;
		           background: Color pink;
		           clipChildren: false;
					  border: border;
		           yourself.
	^ element
]

{ #category : #'as yet unclassified' }
WindowIHM >> createGrid [
	|game ligne colonne cell ctp|
	
	game := GameBoard new .
	game initialize.
	
	grid := self horizontal.
	
	ligne := game width.
	colonne := game height.
	ctp := 1.
	1 to: (ligne) do: [ :i | 
		1 to: (colonne) do: [ :j |
			"""(grid children at: i*ligne + j) background: ((game board at: i at: j) state) color."""

			cell := (game cellX: i Y: j).
			"""(grid children at: i*ligne + j) background: (cell color)."""
			"""child := (i * ligne) + j.
			child > 64 ifTrue: [ child  ]"""
			(grid children at: ctp) background: (cell color).
			ctp := ctp + 1.
		]. 
	].
	^ grid
	





]

{ #category : #'as yet unclassified' }
WindowIHM >> createWindow [
	"Create a window"
	
	self title: 'Bomberman'.
	self extent: World bounds extent.
	
]

{ #category : #factory }
WindowIHM >> horizontal [
	"""Create a grid"""
	|layer taille|
	taille := 64.
	layer := BlElement new 
					background: Color transparent;
					layout: (BlGridLayout horizontal 
								columnCount: 8;
								cellSpacing: 2);
					constraintsDo: [ :c |
			         c horizontal matchParent.
			         c vertical fitContent ].
	
	1 to: taille do: [ :i| 
		layer addChild: self cell].
	^ layer.
	
	
]

{ #category : #initialization }
WindowIHM >> initialize [
	"""Initialize View"""
	super initialize.
	self createWindow .
	"""grid := self horizontal."""
	grid := self createGrid.
	self addChild: grid.
]

{ #category : #accessing }
WindowIHM >> testVue [ 
	"Bidoullage"
	|player board positionPlayer|
	positionPlayer := Position new.
	positionPlayer initializeX: 0 Y: 0 .
	player := EntityVisitor new .
	player initializeName: 'player' position: positionPlayer.
	
	board := GameBoard new .
	board initialize.
	
	self initialize .
	(grid children at: 1) background: Color blue.
	self show.
	
]
