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

{ #category : #factory }
WindowIHM >> createGrid [
	"""Create a grid"""
	|layer taille|
	"""taille := 64.
	layer := BlElement new 
					background: Color transparent;
					layout: (BlGridLayout createGrid 
								columnCount: 8;
								cellSpacing: 2);
					constraintsDo: [ :c |
			         c createGrid matchParent.
			         c vertical fitContent ].
	
	1 to: taille do: [ :i| 
		layer addChild: self cell].
	^ layer."""
	taille := 8.
	layer := BlElement new
                    background: Color transparent;
                    layout: (BlGridLayout createGrid 
                                rowCount: taille;
                                columnCount: taille;
                                cellSpacing: 2);
                    constraintsDo: [ :c |
                        c createGrid matchParent.
                        c vertical fitContent ].

1 to: taille do: [ :x |
    1 to: taille do: [ :y |
        layer addChild: (self cell) ]].

^ layer.
	
	
]

{ #category : #'as yet unclassified' }
WindowIHM >> createWindow [
	"Create a window"
	
	self title: 'Bomberman'.
	self extent: World bounds extent.
	
]

{ #category : #accessing }
WindowIHM >> grid [
	^ grid
]

{ #category : #initialization }
WindowIHM >> initialize [
	"""Initialize View"""
	super initialize.
	self createWindow .
	grid :=  self createGrid.
	self addChild: grid.
	"""(grid children at: 1@1) background: Color blue."""
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
