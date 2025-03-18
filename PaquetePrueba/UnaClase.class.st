"
Comentario.
"
Class {
	#name : #UnaClase,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'edad',
		'altura'
	],
	#category : #PaquetePrueba
}

{ #category : #accessing }
UnaClase >> altura [

	^ altura
]

{ #category : #accessing }
UnaClase >> altura: anObject [

	altura := anObject
]

{ #category : #accessing }
UnaClase >> edad [

	^ edad
]

{ #category : #accessing }
UnaClase >> edad: anObject [

	edad := anObject
]

{ #category : #accessing }
UnaClase >> nombre [

	^ nombre
]

{ #category : #accessing }
UnaClase >> nombre: anObject [

	nombre := anObject
]
