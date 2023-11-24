Class {
	#name : #WindowIHM,
	#superclass : #BlElement,
	#instVars : [
		'grid',
		'window'
	],
	#category : #'Bomberman-vue'
}

{ #category : #'examples - setup' }
WindowIHM >> cell [

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
WindowIHM >> createWindow [
	"Cree la fenetre"

	| aSpace |
	aSpace := BlOSpace new.
	aSpace title: 'Bomberman'.
	aSpace extent: World bounds extent.
	
	^ aSpace.
]

{ #category : #factory }
WindowIHM >> horizontal [

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
	window  := self createWindow .
	grid := self horizontal.
	window addChild: grid.
]

{ #category : #accessing }
WindowIHM >> main [ 
	"main qui fait tourner le jeu"
	|player board positionPlayer|
	positionPlayer := Position new.
	positionPlayer initializeX: 0 Y: 0 .
	player := EntityVisitor new .
	player initializeName: 'player' position: positionPlayer.
	
	board := GameBoard new .
	board initialize.
	

	
	self initialize .
	(grid children at: 1) show.
	
	"""window show."""
	
]

{ #category : #'host space - displaying' }
WindowIHM >> show [ 
	window show.
]
