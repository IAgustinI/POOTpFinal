Class {
	#name : #Cliente,
	#superclass : #Object,
	#instVars : [
		'dni',
		'nombre',
		'apellido',
		'telefono',
		'direccion'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
Cliente class >> crear: unDni nombre: unNombre apellido: unApellido telefono: unTelefono direccion: unaDireccion [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"

	| cliente |
	cliente := self new.
	cliente inicializar: unDni nombre: unNombre apellido: unApellido telefono: unTelefono direccion: unaDireccion.
	
	^ cliente
]

{ #category : #'propias de la clase' }
Cliente >> equal: unDni [

	^ dni = unDni
]

{ #category : #observadores }
Cliente >> getApellido [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^ apellido
]

{ #category : #observadores }
Cliente >> getDireccion [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^ direccion
]

{ #category : #observadores }
Cliente >> getDni [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^ dni
]

{ #category : #observadores }
Cliente >> getNombre [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^ nombre
]

{ #category : #observadores }
Cliente >> getTelefono [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^ telefono
]

{ #category : #inicializadores }
Cliente >> inicializar: unDni nombre: unNombre apellido: unApellido telefono: unTel direccion: unaDireccion [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	
	dni := unDni.
	nombre := unNombre.
	apellido := unApellido.
	telefono := unTel.
	direccion := unaDireccion.
]

{ #category : #printing }
Cliente >> printString [

	^ 'Cliente: ' , nombre , ', DNI: ' , dni asString, ', Telefono: ' , telefono asString, ', Direccion: ' , direccion getCalle, ' ', direccion getNro asString, ', Ciudad: ' , direccion getCiudad, ', Pais: ' , direccion getPais .
]

{ #category : #modificadores }
Cliente >> setApellido: unApellido [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	apellido := unApellido
]

{ #category : #modificadores }
Cliente >> setDireccion: unaDireccion [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	direccion := unaDireccion
]

{ #category : #modificadores }
Cliente >> setNombre: unNombre [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	nombre := unNombre
]

{ #category : #modificadores }
Cliente >> setTelefono: unTelefono [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	telefono := unTelefono
]

{ #category : #'propias de la clase' }
Cliente >> toString [

	^ dni, nombre, apellido, direccion, telefono
]
