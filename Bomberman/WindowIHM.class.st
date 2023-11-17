Class {
	#name : #WindowIHM,
	#superclass : #Object,
	#category : #'Bomberman-IHM'
}

{ #category : #'as yet unclassified' }
WindowIHM >> createWindow [

	| window |

	"Créer une nouvelle fenêtre"
	window := SystemWindow new.
	
	"Titre à la fenetre"
	window setLabel: 'Bomberman' .
	
	"Définir la taille par défaut de la fenêtre ici taille de l'écran"
	window extent: World bounds extent.

	"Ouvrir la fenêtre"
	window openInWorld.
]

{ #category : #'as yet unclassified' }
WindowIHM >> createWindowTest [

	|window|
	window := WindowActivated new.
	window
  title: 'Ma Fenêtre';
  size: 400@300.
]
