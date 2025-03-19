Class {
	#name : #RegistrarContratoGuardaMueblesVisual,
	#superclass : #RegistrarContratoVisual,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarContratoGuardaMueblesVisual >> initialize: laEmpresa [
	
	empresa := laEmpresa .
	self registrarContrato .
]

{ #category : #'propias de la clase' }
RegistrarContratoGuardaMueblesVisual >> registrarContrato [

	| input output1 output2 output3 output4 duracion esGuardaMuebles |

	super registrarContrato. 
	
	output1  := DialogWindowMorph new.
	output1  title: 'No se puedo registrar el contrato.'. 

	output2  := DialogWindowMorph new.
	output2  title: 'El contrato fue registrado.'.
	
	output3  := DialogWindowMorph new.
	output3  title: 'Por favor seleccione una fecha posterior al dia de hoy.'.
	
	output4  := DialogWindowMorph new.
	output4  title: 'El servicio no es GuardaMuebles.'.
	
	esGuardaMuebles := servicio getNombre = 'GuardaMuebles'.
	
	contrato ifNil: [ 
		esGuardaMuebles ifFalse: [ output4 openInWorld ] 
							 ifTrue: [ 
								yaPaso ifTrue: [ output3 openInWorld ]
		 		 						 ifFalse: [ 		
											input := UIManager default request: 'Ingrese la duracion del contrato:'.
											duracion := Number readFrom: input readStream.
	
											registrado  := empresa registrarContratoGuardaMuebles: numero cliente: cliente fechaFirma: fechaFirma  fechaEfecto: fecha  servicio: servicio  colElementos: colElem  tiempoDuracion: duracion  .
											registrado ifNil: [ output1  openInWorld ] 
								  						  ifNotNil: [ output2 openInWorld ] ] ]
		] .
]
