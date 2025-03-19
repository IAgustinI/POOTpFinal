Class {
	#name : #RegistrarContratoMudanzaVisual,
	#superclass : #RegistrarContratoVisual,
	#instVars : [
		'dOrigen',
		'dDestino',
		'numOrigen',
		'numDestino',
		'hora'
	],
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarContratoMudanzaVisual >> initialize: laEmpresa [
	
	empresa := laEmpresa .
	self registrarContrato .
]

{ #category : #'propias de la clase' }
RegistrarContratoMudanzaVisual >> registrarContrato [

	| colDirecciones input output |

	super registrarContrato.
	
	output  := DialogWindowMorph new.
	output  title: 'Por favor seleccione una fecha posterior al dia de hoy.'.
	
	contrato ifNil: [ 
		yaPaso ifTrue: [ output openInWorld ]
		 		 ifFalse: [ 				
					colDirecciones := empresa getColDirecciones .
					numOrigen  := UIManager default chooseFrom: colDirecciones message: 'Seleccione una direccion de Origen' .
					dOrigen  := colDirecciones at: numOrigen.	
		
					colDirecciones := empresa getColDirecciones .
					numDestino := UIManager default chooseFrom: colDirecciones message: 'Seleccione una direccion de Destino' .
					dDestino := colDirecciones at: numDestino .	
		
					input := UIManager default request: 'Ingrese una hora (HH:MM:SS): '.
					hora := Time readFrom: input readStream ]			
		] .
]
