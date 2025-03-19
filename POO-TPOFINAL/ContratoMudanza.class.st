Class {
	#name : #ContratoMudanza,
	#superclass : #Contrato,
	#instVars : [
		'direccionOrigen',
		'direccionDestino',
		'hora',
		'reprogramadoAntes'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #'propias de la clase' }
ContratoMudanza >> costeReprogramar [

	^ 0
]

{ #category : #observadores }
ContratoMudanza >> getDireccionDestino [

	^ direccionDestino
]

{ #category : #observadores }
ContratoMudanza >> getDireccionOrigen [

	^ direccionOrigen
]

{ #category : #observadores }
ContratoMudanza >> getHora [

	^ hora
]

{ #category : #inicializadores }
ContratoMudanza >> inicializar: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol dOrigen: unaDOrigen dDestino: unaDDestino hora: unaHora [

	self inicializar: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol.
	direccionOrigen := unaDOrigen.
	direccionDestino := unaDDestino.
	hora := unaHora .
	reprogramadoAntes := false.
]

{ #category : #'propias de la clase' }
ContratoMudanza >> printString [

	| cad |
	
	cad := super printString .
	
	^ cad asString, ' Direccion Origen: ', direccionOrigen getCiudad , ' Direccion Destino: ', direccionDestino getCiudad , ' Hora: ', hora asString, ' Reprogramado: ', reprogramadoAntes asString
]

{ #category : #'propias de la clase' }
ContratoMudanza >> reprogramar: unaFecha hora: unaHora [ 

		cancelado ifTrue: [ ^ false ] .
		reprogramadoAntes ifTrue: [ ^ false ] .
		(self verificarReprogamacion: unaFecha) ifFalse: [ 
				reprogramadoAntes := true.
				costoServicio := costoServicio + (self costeReprogramar).
				fechaEfecto := unaFecha.
				hora := unaHora ] .
	
		^ reprogramadoAntes  
]

{ #category : #'propias de la clase' }
ContratoMudanza >> reprogramarUrgente: unaFecha hora: unaHora [ 

		cancelado ifTrue: [ ^ false ] .
		reprogramadoAntes ifTrue: [ ^ false ] .
		(self verificarReprogamacion: unaFecha) ifFalse: [ 
				reprogramadoAntes := true .
				multa := costoServicio * 0.2  .
				costoServicio := costoServicio + multa .
				fechaEfecto := unaFecha.
				hora := unaHora ] .
	
		^ reprogramadoAntes  
		
	

]

{ #category : #modificadores }
ContratoMudanza >> setDireccionDestino: unaDireccionDestino [

	direccionDestino := unaDireccionDestino
]

{ #category : #modificadores }
ContratoMudanza >> setDireccionOrigen: unaDireccionOrigen [

	direccionOrigen := unaDireccionOrigen
]

{ #category : #modificadores }
ContratoMudanza >> setHora: unaHora [

	hora := unaHora
]

{ #category : #'propias de la clase' }
ContratoMudanza >> toString [ 

	| cad |
	
	cad := super toString .
	
	^ cad asString, ' Direccion Origen: ', direccionOrigen getCiudad , ' Direccion Destino: ', direccionDestino getCiudad , ' Hora: ', hora asString, ' Reprogramado: ', reprogramadoAntes asString
]

{ #category : #'propias de la clase' }
ContratoMudanza >> verificarReprogamacion: nuevaFecha [
"Las reprogramciones solo pueden hacerse a dias posteriores a la fecha previamente acordada"

	| sePuedeReprogramar |
	
	sePuedeReprogramar := self verificarFecha .
	sePuedeReprogramar ifTrue: [ nuevaFecha isAfter: fechaEfecto ].	
	
	^ sePuedeReprogramar
]
