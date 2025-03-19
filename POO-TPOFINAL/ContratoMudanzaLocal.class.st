Class {
	#name : #ContratoMudanzaLocal,
	#superclass : #ContratoMudanza,
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
ContratoMudanzaLocal class >> crear: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol dOrigen: unaDOrigen dDestino: unaDDestino hora: unaHora [

	| nuevoContratoLocal |
	nuevoContratoLocal := self new.

	nuevoContratoLocal
		inicializar: unNumero
		cliente: unCliente
		fechaFirma: unaFechaFirma
		fechaEfecto: unaFechaEfecto
		servicio: unServicio
		colElementos: unaCol
		dOrigen: unaDOrigen
		dDestino: unaDDestino
		hora: unaHora.

	^ nuevoContratoLocal
]

{ #category : #'propias de la clase' }
ContratoMudanzaLocal >> verificarReprogamacion: unaFecha [

	| sePuedeReprogramar |
	
	sePuedeReprogramar := super verificarReprogamacion: unaFecha .
	sePuedeReprogramar ifTrue: [ sePuedeReprogramar := (fechaEfecto subtractDate: Date today) >= 2 ].
	
	^ sePuedeReprogramar
]
