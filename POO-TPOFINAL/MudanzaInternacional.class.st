Class {
	#name : #MudanzaInternacional,
	#superclass : #ServicioMudanza,
	#instVars : [
		'valorAdAduana',
		'valorAdTransporte',
		'valorAdSeguro',
		'seguroInternacional'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
MudanzaInternacional class >> crear: unId nombre: unNombre descripcion: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura valorAdAduana: adicionalAduana valorAdTransporte: adicionalTransporte valorAdSeguro: adicionalSeguro [

	| nuevaMudanzaInternacional |
	nuevaMudanzaInternacional := self new.

	nuevaMudanzaInternacional inicializar: unId nombre: unNombre descripcion: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura valorAdAduana: adicionalAduana valorAdTransporte: adicionalTransporte valorAdSeguro: adicionalSeguro.

	^ nuevaMudanzaInternacional
]

{ #category : #'propias de la clase' }
MudanzaInternacional >> calcularValorTotal [

	^ super calcularValorTotal + valorAdTransporte asNumber + valorAdAduana asNumber .
]

{ #category : #observadores }
MudanzaInternacional >> getSeguroInternacional [

	^ seguroInternacional
]

{ #category : #observadores }
MudanzaInternacional >> getValorAdAduana [

	^ valorAdAduana
]

{ #category : #observadores }
MudanzaInternacional >> getValorAdSeguro [

	^ valorAdSeguro
]

{ #category : #observadores }
MudanzaInternacional >> getValorAdTransporte [

	^ valorAdTransporte
]

{ #category : #inicializadores }
MudanzaInternacional >> inicializar: unId nombre: unNombre descripcion: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura valorAdAduana: adicionalAduana valorAdTransporte: adicionalTransporte valorAdSeguro: adicionalSeguro [ 

	self inicializar: unId nombre: unNombre desc: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura.
	valorAdAduana := adicionalAduana.
	valorAdTransporte := adicionalTransporte.
	valorAdSeguro := adicionalSeguro.
	seguroInternacional := (adicionalSeguro > 0).
]

{ #category : #printing }
MudanzaInternacional >> printString [ 
	
	| cad |
	
	cad := super printString .
	
	^ cad asString, ' Valor AdAduana: ', valorAdAduana asString , ' Valor Transporte: ', valorAdTransporte asString , ' Valor Seguro: ', valorAdSeguro asString.
]

{ #category : #modificadores }
MudanzaInternacional >> setSeguroInternacional: unSeguroInternacional [

	seguroInternacional := unSeguroInternacional
]

{ #category : #modificadores }
MudanzaInternacional >> setValorAdAduana: unValorAdAduana [

	valorAdAduana := unValorAdAduana
]

{ #category : #modificadores }
MudanzaInternacional >> setValorAdSeguro: unValorAdSeguro [

	valorAdSeguro := unValorAdSeguro 
]

{ #category : #modificadores }
MudanzaInternacional >> setValorAdTransporte: unValorAdTransporte [

	valorAdTransporte := unValorAdTransporte
]
