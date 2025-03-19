Class {
	#name : #RegistrarContratoMudanzaLocalVisual,
	#superclass : #RegistrarContratoMudanzaVisual,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarContratoMudanzaLocalVisual >> initialize: laEmpresa [
	
	empresa := laEmpresa .
	self registrarContrato .
]

{ #category : #'propias de la clase' }
RegistrarContratoMudanzaLocalVisual >> registrarContrato [

	| output1 output2 output3 output4 esMudanzaLocal |
	super registrarContrato.

	output1 := DialogWindowMorph new.
	output1 title: 'No se puedo registrar el contrato.'.

	output2 := DialogWindowMorph new.
	output2 title: 'El contrato fue registrado.'.

	output3 := DialogWindowMorph new.
	output3 title: 'Las direccion son iguales.'.
	
	output4 := DialogWindowMorph new.
	output4 title: 'El servicio no es Mudanza Local.'. 
	
	esMudanzaLocal := servicio getNombre = 'MudanzaLocal'.

	(contrato isNil and: [ yaPaso = false ]) ifTrue: [ 
		(numOrigen = numDestino)	ifTrue: [ output3 openInWorld ] 
				  						ifFalse: [
											esMudanzaLocal ifFalse: [ output4 openInWorld ] 
																ifTrue: [
																	registrado := empresa registrarContratoMudanzaLocal: numero cliente: cliente fechaFirma: fechaFirma fechaEfecto: fecha servicio: servicio colElementos: colElem dOrigen: dOrigen dDestino: dDestino hora: hora.
																	registrado ifNil: [ output1 openInWorld ]
														  						  ifNotNil: [ output2 openInWorld ] ] ] ] .
]
