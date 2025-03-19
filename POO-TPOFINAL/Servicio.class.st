Class {
	#name : #Servicio,
	#superclass : #Object,
	#instVars : [
		'id',
		'nombre',
		'descripcion',
		'valorBase'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #'propias de la clase' }
Servicio >> calcularValorTotal [

	^ valorBase asNumber 
]

{ #category : #'propias de la clase' }
Servicio >> equal: unId [

	^ id = unId 
]

{ #category : #observadores }
Servicio >> getDescripcion [

	^ descripcion
]

{ #category : #observadores }
Servicio >> getId [

	^ id
]

{ #category : #observadores }
Servicio >> getNombre [

	^ nombre
]

{ #category : #observadores }
Servicio >> getValorBase [

	^ valorBase
]

{ #category : #inicializadores }
Servicio >> inicializar: unId nombre: unNombre desc: unaDesc valorBase: unValorBase [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	
	id := unId.
	nombre := unNombre.
	descripcion := unaDesc.
	valorBase := unValorBase.
]

{ #category : #printing }
Servicio >> printString [ 
	
	^ 'Id: ', id , ', Nombre: ', nombre , ', Descripcion: ', descripcion , ', Valor Base: ', valorBase asString.
]

{ #category : #modificadores }
Servicio >> setDescripcion: unaDescripcion [

	descripcion := unaDescripcion
]

{ #category : #modificadores }
Servicio >> setNombre: unNombre [

	nombre := unNombre
]

{ #category : #modificadores }
Servicio >> setValorBase: unValor [

	valorBase := unValor
]

{ #category : #'propias de la clase' }
Servicio >> toString [ 
	
	^ id , nombre , descripcion , 'Valor Base: ', valorBase asString.
]
