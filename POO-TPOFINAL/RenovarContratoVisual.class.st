Class {
	#name : #RenovarContratoVisual,
	#superclass : #BorderedMorph,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #'propias de la clase' }
RenovarContratoVisual >> ingresarElementos [
	
	|listaElementos elemento respuesta|
	
	listaElementos := OrderedCollection new.
	
	respuesta := 1.
	
	[ respuesta = 1 ] whileTrue: [elemento := UIManager default request: 'Ingrese un elemento: '. 
	listaElementos add: elemento . respuesta := UIManager default chooseFrom: #('Si' 'No') title: '¿Desea seguir agregando elementos a la lista?'].
	
^listaElementos
]

{ #category : #initialization }
RenovarContratoVisual >> initialize: laEmpresa [

	| output1 output2 output3 output4 output5 output6 input empresa numero contrato esGuardaMuebles yaCancelado yaTerminado duracion colElem renovado |

	empresa := laEmpresa . 
	
	output1 := DialogWindowMorph new.
	output1 title: 'El contrato no existe.'.

	output2 := DialogWindowMorph new.
	output2 title: 'El contrato ya fue cancelado.'.

	output3 := DialogWindowMorph new.
	output3 title: 'El contrato ya termino.'.
		
	output4 := DialogWindowMorph new.
	output4 title: 'No se puedo renovar el contrato.'.

	output5 := DialogWindowMorph new.
	output5 title: 'El contrato fue renovado.'.
	
	output6 := DialogWindowMorph new.
	output6 title: 'El contrato no es GuardaMuebles.'.

	numero := UIManager default request: 'Ingrese el numero del contrato que quiere renovar:'.

	contrato := empresa buscarContrato: numero.	
	contrato ifNil: [ output1 openInWorld ] 
				ifNotNil: [ 	esGuardaMuebles := ((contrato getServicio) getNombre) = 'GuardaMuebles'.
					esGuardaMuebles ifFalse: [ output6 openInWorld ]
										 ifTrue: [ yaCancelado := contrato getCancelado.
											 	yaCancelado ifTrue: [ output2 openInWorld ] 
																ifFalse: [ yaTerminado := contrato verificarDuracion .
																		yaTerminado ifTrue: [ output3 openInWorld ] 
														 								ifFalse: [ 
																								input := UIManager default request: 'Ingrese la nueva duracion:' initialAnswer: '0'.
																								duracion := input asNumber .
	
																								colElem := self ingresarElementos .
																								
																								renovado := contrato renovar: duracion colElementos: colElem .
																								renovado ifFalse: [ output4 openInWorld ] 
																											ifTrue: [ output5 openInWorld ] ] ] ] ].
]
