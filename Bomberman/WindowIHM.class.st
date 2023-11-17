Class {
	#name : #WindowIHM,
	#superclass : #Object,
	#category : #'Bomberman-IHM'
}

{ #category : #'as yet unclassified' }
WindowIHM >> createWindow [
	"Cree la fenetre"

	| aSpace element |
	aSpace := BlOSpace new.
	aSpace title: 'Bomberman'.
	aSpace extent: World bounds extent.
	
	self printBoard: aSpace .
	aSpace show.

	"aSpace addChild: self printCell.
	aSpace show."
]

{ #category : #'as yet unclassified' }
WindowIHM >> printBoard: window [
	"Fais apparaitre le board sur la window"

	| board taille posXOrigine posYOrigine posX posY |
	board := OrderedCollection new.
	taille := 8.
	posXOrigine := 50.
	posYOrigine := 50.
	posX := 50.
	posY := 50.
	1 to: taille do: [ :i |
		posY := posY + 50.
		posX := posXOrigine.
		1 to: taille do: [ :j |
			| element |
			posX := posX + 50.
			element := self printCellPositionX: posX positionY: posY.
			board add: element.
			window addChild: element ] ]
]

{ #category : #printing }
WindowIHM >> printCellPositionX: posX positionY: posY [
	"Fais apparaitre une cellule ou on peut changer la position"

	| element border|
	border := BlBorder paint: Color black .
	element := BlElement new
		           size: 50 @ 50;
		           background: Color pink;
		           position: posX @ posY;
		           clipChildren: false;
					  border: border;
		           yourself.
	^ element
]
