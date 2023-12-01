Class {
	#name : #MainMain,
	#superclass : #Object,
	#instVars : [
		'board',
		'player',
		'vue'
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
	
	vue := WindowIHM new .
	vue initialize .
	
	
	
	
]

{ #category : #accessing }
MainMain >> main [ 
	"""Main for play"""
	self initialize.
	vue show.
	[true] whileTrue: [
    
].
	
	
	
	
]
