Class {
	#name : #RegistrarContratoMudanzaNacionalVisual,
	#superclass : #RegistrarContratoMudanzaVisual,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarContratoMudanzaNacionalVisual >> initialize: laEmpresa [
	
	empresa := laEmpresa .
	self registrarContrato .
]

{ #category : #'propias de la clase' }
RegistrarContratoMudanzaNacionalVisual >> registrarContrato [

	| output1 output2 output3 output4 esMudanzaNacional |

	super registrarContrato.
	
	output1  := DialogWindowMorph new.
	output1  title: 'No se puedo registrar el contrato.'. 

	output2  := DialogWindowMorph new.
	output2  title: 'El contrato fue registrado.'.
	
	output3 := DialogWindowMorph new.
	output3 title: 'Las direccion son iguales.'. 
	
	output4 := DialogWindowMorph new.
	output4 title: 'El servicio no es Mudanza Local.'. 
	
	esMudanzaNacional := servicio getNombre = 'MudanzaNacional'.
		
	(contrato isNil and: [ yaPaso = false ]) ifTrue: [ 
		(numOrigen = numDestino)	ifTrue: [ output3 openInWorld ] 
				  						ifFalse: [ 
											esMudanzaNacional ifFalse: [ output4 openInWorld ] 
																ifTrue: [
				  													registrado := empresa registrarContratoMudanzaNacional: numero cliente: cliente fechaFirma: fechaFirma  fechaEfecto: fecha  servicio: servicio  colElementos: colElem  dOrigen: dOrigen  dDestino: dDestino hora: hora .
				  													registrado ifNil: [ output1  openInWorld ] 
									  					  						  ifNotNil: [ output2 openInWorld ] ] ] ] .
]
