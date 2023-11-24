Class {
	#name : #MainMain,
	#superclass : #Object,
	#category : #'Bomberman-controleur'
}

{ #category : #accessing }
MainMain >> main [ 
	|vue board player position|
	
	board := GameBoard new .
	board initialize .
	
	position := Position new.
	position initializeX: 0 Y: 0.
	player := PlayerVisitor new .
	player initializeName: 'Player' position: position.
	
	vue := WindowIHM new .
	vue initialize .
	vue show.
	
	
	
	
]
