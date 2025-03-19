Class {
	#name : #ServicioMudanza,
	#superclass : #Servicio,
	#instVars : [
		'capacidad',
		'valorAdEmbalaje',
		'valorAdAltura'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #'propias de la clase' }
ServicioMudanza >> calcularValorTotal [

	^ super calcularValorTotal + valorAdEmbalaje asNumber + valorAdAltura asNumber.
]

{ #category : #observadores }
ServicioMudanza >> getCapacidad [

	^ capacidad
]

{ #category : #observadores }
ServicioMudanza >> getValorAdAltura [

	^ valorAdAltura
]

{ #category : #observadores }
ServicioMudanza >> getValorAdEmbalaje [

	^ valorAdEmbalaje
]

{ #category : #inicializadores }
ServicioMudanza >> inicializar: unId nombre: unNombre desc: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura [

	self inicializar: unId nombre: unNombre desc: unaDescripcion valorBase: unValorBase.
	capacidad := unaCapacidad.
	valorAdEmbalaje := unValorEmbalaje.
	valorAdAltura := unValorAltura.
]

{ #category : #printing }
ServicioMudanza >> printString [ 
	
	| cad |
	
	cad := super printString .
	
	^ cad asString, ' Capacidad: ', capacidad asString , ' Valor Embalaje: ', valorAdEmbalaje asString , ' Valor Altura: ', valorAdAltura asString.
]

{ #category : #modificadores }
ServicioMudanza >> setCapacidad: unaCapacidad [

	capacidad := unaCapacidad
]

{ #category : #modificadores }
ServicioMudanza >> setValorAdAltura: unValorAdAltura [

	valorAdAltura := unValorAdAltura
]

{ #category : #modificadores }
ServicioMudanza >> setValorAdEmbalaje: unValorAdEmbalaje [

	valorAdEmbalaje := unValorAdEmbalaje
]
