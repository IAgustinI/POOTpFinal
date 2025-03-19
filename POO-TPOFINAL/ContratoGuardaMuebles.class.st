Class {
	#name : #ContratoGuardaMuebles,
	#superclass : #Contrato,
	#instVars : [
		'tiempoDuracion',
		'colRenovaciones'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
ContratoGuardaMuebles class >> crear: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol tiempoDuracion: unTiempo [ 

	| nuevoContratoGuardaMuebles |
	nuevoContratoGuardaMuebles := self new.
	
	nuevoContratoGuardaMuebles inicializar: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol tiempoDuracion: unTiempo.
	
	^ nuevoContratoGuardaMuebles
]

{ #category : #'propias de la clase' }
ContratoGuardaMuebles >> costeCancelacion [

	| tieneMulta |	
		
	multa := super costeCancelacion .	
	
	tieneMulta := (fechaEfecto subtractDate: Date today) <= 3.
	tieneMulta ifTrue: [  
		multa := costoServicio * 0.1.
		costoServicio := multa ] .
	
	^ multa
]

{ #category : #'propias de la clase' }
ContratoGuardaMuebles >> fechaFinalizacion [
	"Devuelve la fecha de finalización del servicio."

	| fechaFinal |
	
	fechaFinal := self getFechaEfecto addDays: tiempoDuracion.

	^ fechaFinal
]

{ #category : #observadores }
ContratoGuardaMuebles >> getColFechasRenovacion [

	^ colRenovaciones
]

{ #category : #observadores }
ContratoGuardaMuebles >> getTiempoDuracion [

	^ tiempoDuracion
]

{ #category : #inicializadores }
ContratoGuardaMuebles >> inicializar: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol tiempoDuracion: unTiempo [

	self inicializar: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol.
	tiempoDuracion := unTiempo.
	
	colRenovaciones := OrderedCollection new.

]

{ #category : #'propias de la clase' }
ContratoGuardaMuebles >> printString [ 
	
	| cadRen cad |

	cadRen := colRenovaciones join: ', '.
	
	cad := super printString .
	
	^ cad asString, ' Duracion: ', tiempoDuracion asString, ' Renovaciones: ', cadRen asString
]

{ #category : #'propias de la clase' }
ContratoGuardaMuebles >> renovar: nuevaDuracion colElementos: unaCol [

	| renovado |
	
	renovado := false.
	cancelado ifTrue: [ ^ self ].
	tiempoDuracion := tiempoDuracion + nuevaDuracion.
	colRenovaciones add: Date today.
	colElementos addAll: unaCol.
	renovado := true.
	
	^ renovado 
	"unaCol do: [ :each | colElementos add: each ]"
]

{ #category : #modificadores }
ContratoGuardaMuebles >> setTiempoDuracion: unTiempo [

	tiempoDuracion := unTiempo
]

{ #category : #'propias de la clase' }
ContratoGuardaMuebles >> toString [ 
	
	| cadRen cad |

	cadRen := colRenovaciones join: ', '.
	
	cad := super toString .
	
	^ cad asString, ' Duracion: ', tiempoDuracion asString, ' Renovaciones: ', cadRen asString
]

{ #category : #'propias de la clase' }
ContratoGuardaMuebles >> verificarDuracion [

	^ Date today isAfter: (fechaEfecto addDays: tiempoDuracion)
]
