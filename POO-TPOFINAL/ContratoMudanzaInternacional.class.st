Class {
	#name : #ContratoMudanzaInternacional,
	#superclass : #ContratoMudanza,
	#instVars : [
		'transporteAprovado'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
ContratoMudanzaInternacional class >> crear: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol dOrigen: unaDOrigen dDestino: unaDDestino hora: unaHora [

	| nuevoContratoInternacional |
	nuevoContratoInternacional := self new.

	nuevoContratoInternacional
		inicializar: unNumero
		cliente: unCliente
		fechaFirma: unaFechaFirma
		fechaEfecto: unaFechaEfecto
		servicio: unServicio
		colElementos: unaCol
		dOrigen: unaDOrigen
		dDestino: unaDDestino
		hora: unaHora.

	^ nuevoContratoInternacional
]

{ #category : #'propias de la clase' }
ContratoMudanzaInternacional >> costeCancelacion [

	| costeAduanero costeTransporte |
	
	costeAduanero := servicio getValorAdAduana.
	costeTransporte := servicio getValorAdTransporte.
	multa := costeAduanero + costeTransporte.
	
	^ multa
]

{ #category : #inicializadores }
ContratoMudanzaInternacional >> inicializar: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol dOrigen: unaDOrigen dDestino: unaDDestino hora: unaHora [

	self inicializar: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol.
	direccionOrigen := unaDOrigen.
	direccionDestino := unaDDestino.
	hora := unaHora .
	reprogramadoAntes := false.
	transporteAprovado := false.
]

{ #category : #'propias de la clase' }
ContratoMudanzaInternacional >> verificarReprogamacion: unaFecha [

	| sePuedeReprogramar |
	
	sePuedeReprogramar := super verificarReprogamacion: unaFecha .
	sePuedeReprogramar ifTrue: [ sePuedeReprogramar := self verificarTransporteAprovado].	
	
	^ sePuedeReprogramar
]

{ #category : #'propias de la clase' }
ContratoMudanzaInternacional >> verificarTransporteAprovado [

	transporteAprovado ifTrue: [ ^ true ] .
	transporteAprovado := servicio getValorBase <= ( servicio getValorAdTransporte + servicio getValorAdSeguro )
			                      ifTrue: [ (fechaEfecto subtractDate: Date today) >= 7 ]
			                      ifFalse: [ (fechaEfecto subtractDate: Date today) >= 14 ] . 

	^ transporteAprovado
]
