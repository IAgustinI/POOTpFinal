Class {
	#name : #BotonAccion,
	#superclass : #SimpleButtonMorph,
	#instVars : [
		'bloque'
	],
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
BotonAccion >> initialize [

	super initialize.
	self color: Color gray darker.
]

{ #category : #'propias de la clase' }
BotonAccion >> mouseAction: unBloque [
	
	^ bloque := unBloque
]

{ #category : #'event handling' }
BotonAccion >> mouseUp: unEvento [
	
	super mouseUp: unEvento.
	bloque value.
]
