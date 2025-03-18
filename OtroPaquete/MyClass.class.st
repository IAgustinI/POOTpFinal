Class {
	#name : #MyClass,
	#superclass : #Object,
	#instVars : [
		'uno',
		'dos',
		'tres'
	],
	#category : #OtroPaquete
}

{ #category : #accessing }
MyClass >> dos [

	^ dos
]

{ #category : #accessing }
MyClass >> dos: anObject [

	dos := anObject
]

{ #category : #accessing }
MyClass >> tres [

	^ tres
]

{ #category : #accessing }
MyClass >> tres: anObject [

	tres := anObject
]

{ #category : #accessing }
MyClass >> uno [

	^ uno
]

{ #category : #accessing }
MyClass >> uno: anObject [

	uno := anObject
]
