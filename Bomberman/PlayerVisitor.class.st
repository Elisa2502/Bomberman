Class {
	#name : #PlayerVisitor,
	#superclass : #EntityVisitor,
	#category : #'Bomberman-entity'
}

{ #category : #accessing }
PlayerVisitor class >> color [ 

	^ Color blue
]

{ #category : #accessing }
PlayerVisitor >> color [

	^ Color blue 
]

{ #category : #visiting }
PlayerVisitor >> visitBombCellState: cell atPos: cellPos [
	"You yould not pass for die"
	
	
]

{ #category : #visiting }
PlayerVisitor >> visitBreakableCellState: cell atPos: cellPos [
	"You should not pass if I not break"
]

{ #category : #visiting }
PlayerVisitor >> visitSimpleCellState: cell atPos: cellPos [
	"You should pass"
	self position: cellPos.
	
]

{ #category : #visiting }
PlayerVisitor >> visitWallCellState: cell atPos: cellPos [
	"You should not pass"
	
	
]
