Class {
	#name : #RegistrarContratoMudanzaInternacionalVisual,
	#superclass : #RegistrarContratoMudanzaVisual,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarContratoMudanzaInternacionalVisual >> initialize: laEmpresa [
	
	empresa := laEmpresa .
	self registrarContrato .
]

{ #category : #'propias de la clase' }
RegistrarContratoMudanzaInternacionalVisual >> registrarContrato [

	| output1 output2 output3 output4 esMudanzaInternacional |

	super registrarContrato.
	
	output1  := DialogWindowMorph new.
	output1  title: 'No se puedo registrar el contrato.'. 

	output2  := DialogWindowMorph new.
	output2  title: 'El contrato fue registrado.'.
	
	output3 := DialogWindowMorph new.
	output3 title: 'Las direccion son iguales.'. 
	
	output4 := DialogWindowMorph new.
	output4 title: 'El servicio no es Mudanza Internacional.'. 
	
	esMudanzaInternacional := servicio getNombre = 'MudanzaInternacional'.
		
	(contrato isNil and: [ yaPaso = false ]) ifTrue: [ 
		(numOrigen = numDestino)	ifTrue: [ output3 openInWorld ] 
				  						ifFalse: [ 
											esMudanzaInternacional ifFalse: [ output4 openInWorld ] 
																		  ifTrue: [
				  																registrado := empresa registrarContratoMudanzaInternacional: numero cliente: cliente fechaFirma: fechaFirma  fechaEfecto: fecha  servicio: servicio  colElementos: colElem  dOrigen: dOrigen  dDestino: dDestino hora: hora .
				  																registrado ifNil: [ output1  openInWorld ] 
									  					  									  ifNotNil: [ output2 openInWorld ] ] ]
			 	  		
	] . 
]
