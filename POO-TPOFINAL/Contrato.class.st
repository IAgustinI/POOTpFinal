Class {
	#name : #Contrato,
	#superclass : #Object,
	#instVars : [
		'numero',
		'cliente',
		'servicio',
		'fechaFirma',
		'fechaEfecto',
		'colElementos',
		'costoServicio',
		'cancelado',
		'multa'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #'propias de la clase' }
Contrato >> cancelar [
	
	"cancelado ifFalse:[ 
	self verificarFecha ifTrue:["
	cancelado ifTrue: [ ^ true ].
	cancelado := true.
	costoServicio := self costeCancelacion "] ]" .
	
	^ cancelado
]

{ #category : #'propias de la clase' }
Contrato >> costeCancelacion [

	^ 0
]

{ #category : #'propias de la clase' }
Contrato >> equal: unNumero [

	^ numero = unNumero
]

{ #category : #observadores }
Contrato >> getCancelado [

	^ cancelado
]

{ #category : #observadores }
Contrato >> getCliente [

	^ cliente
]

{ #category : #observadores }
Contrato >> getColElementos [

	^ colElementos
]

{ #category : #observadores }
Contrato >> getCostoServicio [

	^ costoServicio    
]

{ #category : #observadores }
Contrato >> getFechaEfecto [ 

	^ fechaEfecto 
]

{ #category : #observadores }
Contrato >> getFechaFirma [

	^ fechaFirma 
]

{ #category : #observadores }
Contrato >> getMulta [

	^ multa 
]

{ #category : #observadores }
Contrato >> getNumero [

	^ numero
]

{ #category : #observadores }
Contrato >> getServicio [

	^ servicio
]

{ #category : #inicializadores }
Contrato >> inicializar: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol [
	
	numero:= unNumero.
	cliente := unCliente.
	fechaFirma  := unaFechaFirma.
	fechaEfecto := unaFechaEfecto.
	servicio := unServicio.
	cancelado := false.
	costoServicio := unServicio calcularValorTotal asNumber.
	colElementos := OrderedCollection new.
 	colElementos add: unaCol.
	multa := 0 .
]

{ #category : #'propias de la clase' }
Contrato >> perteneceAEstaSemana [
	

	^ (Date today subtractDate: fechaFirma) <= 7
]

{ #category : #'propias de la clase' }
Contrato >> printString [

	| cadCol |

	cadCol := ', ' join: colElementos .

	^ 'Numero: ', numero asString, ', Cliente: ', cliente getDni asString, ', Fecha Firma: ', fechaFirma yyyymmdd, ', Fecha Efecto: ', fechaEfecto yyyymmdd, ', Servicio: ', servicio getNombre asString, ', Costo Servicio: ', costoServicio asString, ', Cancelado: ', cancelado asString, ', Multa: ', multa asString, ', Elementos: ',  cadCol asString.
]

{ #category : #modificadores }
Contrato >> setCancelado: unValor [

	cancelado := unValor
]

{ #category : #modificadores }
Contrato >> setCliente: unCliente [

	cliente := unCliente
]

{ #category : #modificadores }
Contrato >> setCostoServicio: unValor [

	costoServicio := unValor
]

{ #category : #modificadores }
Contrato >> setFechaEfecto: unaFecha [

	fechaEfecto := unaFecha
]

{ #category : #modificadores }
Contrato >> setFechaFirma: unaFecha [

	fechaFirma := unaFecha
]

{ #category : #modificadores }
Contrato >> setMulta: unValor [

	multa := unValor
]

{ #category : #modificadores }
Contrato >> setServicio: unServicio [

	servicio := unServicio
]

{ #category : #'propias de la clase' }
Contrato >> toString [

	| cadCol |

	cadCol := ', ' join: colElementos .

	^ 'Numero: ', numero asString, ' Cliente: ', cliente getDni asString, ' Fecha Firma: ', fechaFirma yyyymmdd, ' Fecha Efecto: ', fechaEfecto yyyymmdd, ' Servicio: ', servicio getNombre asString, ' Costo Servicio: ', costoServicio asString, ' Cancelado: ', cancelado asString, ' Multa: ', multa asString, ' Elementos: ',  cadCol asString.
]

{ #category : #'propias de la clase' }
Contrato >> verificarCliente: unCliente [

	^ cliente equals: unCliente
]

{ #category : #'propias de la clase' }
Contrato >> verificarFecha [

	^ fechaEfecto isBefore: (Date today)
]
