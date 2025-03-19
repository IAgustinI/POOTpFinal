Class {
	#name : #ContratoMudanzaNacional,
	#superclass : #ContratoMudanza,
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
ContratoMudanzaNacional class >> crear: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol dOrigen: unaDOrigen dDestino: unaDDestino hora: unaHora [

	| nuevoContratoNacional |
	nuevoContratoNacional := self new.

	nuevoContratoNacional
		inicializar: unNumero
		cliente: unCliente
		fechaFirma: unaFechaFirma
		fechaEfecto: unaFechaEfecto
		servicio: unServicio
		colElementos: unaCol
		dOrigen: unaDOrigen
		dDestino: unaDDestino
		hora: unaHora.

	^ nuevoContratoNacional
]

{ #category : #'propias de la clase' }
ContratoMudanzaNacional >> costeCancelacion [

	| tieneMulta |
	
	multa := super costeCancelacion .	
	
	tieneMulta := (fechaEfecto subtractDate: Date today) <= 7.
	tieneMulta ifTrue: [ 
		multa := costoServicio * 0.1. ] .
	
	^ multa
]

{ #category : #'propias de la clase' }
ContratoMudanzaNacional >> costeReprogramar [
	
	multa := servicio getValorAdiFragil + ( 20 atRandom * servicio getValorAdiDistExtra ).

	^ multa
]

{ #category : #'propias de la clase' }
ContratoMudanzaNacional >> verificarReprogamacion: unaFecha [

	| sePuedeReprogramar |

	sePuedeReprogramar := super verificarReprogamacion: unaFecha .
	sePuedeReprogramar ifTrue: [ sePuedeReprogramar := (fechaEfecto subtractDate: Date today) >= 5 ].
	
	^ sePuedeReprogramar
]
