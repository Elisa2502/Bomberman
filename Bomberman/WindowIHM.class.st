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
	
	self title: 'Bomberman'.
	self extent: World bounds extent.
	
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
	super initialize.
	self createWindow .
	grid := self horizontal.
	self addChild: grid.
]

{ #category : #accessing }
WindowIHM >> testVue [ 
	"main qui fait tourner le jeu"
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
