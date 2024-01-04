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
	taille := 8.
	layer := BlElement new
                    background: Color transparent;
                    layout: (BlGridLayout horizontal 
                                rowCount: taille;
                                columnCount: taille;
                                cellSpacing: 2);
                    constraintsDo: [ :c |
                        c horizontal matchParent.
                        c vertical fitContent ].

0 to: (taille - 1) do: [ :x |
    0 to: (taille - 1) do: [ :y |
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
]
