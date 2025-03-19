Class {
	#name : #ReprogramarContratoVisual,
	#superclass : #BorderedMorph,
	#instVars : [
		'empresa'
	],
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
ReprogramarContratoVisual >> initialize: laEmpresa [

	| origen titulo botonMinimizar botonCerrar botonReprogramarContrato botonReprogramarContratoUrgente |
	
	self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 400 @ 600).	 

	empresa := laEmpresa . 

	origen := self innerBounds origin. 

	titulo := StringMorph new.
	titulo
		contents: 'REPROGRAMAR CONTRATOS';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 12);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: self innerBounds origin + (16 @ 16). 
	self addMorph: titulo.
	
	botonReprogramarContrato := BotonAccion new.
	self addMorph: botonReprogramarContrato.
	botonReprogramarContrato position: origen  + (75 @ 150).
	botonReprogramarContrato label: 'REPROGRAMAR'.
	botonReprogramarContrato extent: 276 @ 56.
	botonReprogramarContrato mouseAction: [	self reprogramarContrato ].
	
	
	botonReprogramarContratoUrgente := BotonAccion new.	
	self addMorph: botonReprogramarContratoUrgente.	
	botonReprogramarContratoUrgente position: origen + (75 @ 300).	
	botonReprogramarContratoUrgente label: 'REPROGRAMAR URGENTE'.
	botonReprogramarContratoUrgente extent: 276 @ 56.
	botonReprogramarContratoUrgente mouseAction: [ self reprogramarContratoUrgente ].
	
	botonMinimizar := BotonAccion new.
	self addMorph: botonMinimizar.
	botonMinimizar position: origen + (250 @ 20).
	botonMinimizar label: '_'.
	botonMinimizar extent: 48 @ 36.
	botonMinimizar mouseAction: [ self collapse ].  
	
	botonCerrar := BotonAccion new. 	
	self addMorph: botonCerrar.
	botonCerrar position: origen + (300 @ 20).
	botonCerrar label: 'X'.
	botonCerrar extent: 48 @ 36.
	botonCerrar mouseAction: [ self delete ].
	
	self openInWorld 
]

{ #category : #'propias de la clase' }
ReprogramarContratoVisual >> reprogramarContrato [

	| output1 output2 output3 output4 output5 output6 input numero contrato fecha hora esMudanza reprogramado yaCancelado yaIniciado|
	
	output1 := DialogWindowMorph new.
	output1 title: 'El contrato no existe.'.

	output2 := DialogWindowMorph new.
	output2 title: 'El contrato ya fue cancelado.'.

	output3 := DialogWindowMorph new.
	output3 title: 'El contrato ya fue inciado.'.

	output4 := DialogWindowMorph new.
	output4 title: 'No se pudo reprogramar el contrato.'.

	output5 := DialogWindowMorph new.
	output5 title: 'El contrato fue reprogramado.'.

	output6 := DialogWindowMorph new.
	output6 title: 'El contrato no es Mudaza.'.

	numero := UIManager default request:
		          'Ingrese el numero del contrato que quiere reprogramar:'.

	contrato := empresa buscarContrato: numero.
	contrato ifNil: [ output1 openInWorld ] ifNotNil: [
		esMudanza := contrato getServicio getNombre.
		(esMudanza = 'MudanzaLocal' or:
			 (esMudanza = 'MudanzaNacional' or:
				  esMudanza = 'MudanzaInternacional'))
			ifFalse: [ output6 openInWorld ]
			ifTrue: [
				yaCancelado := contrato getCancelado.
				yaCancelado
					ifTrue: [ output2 openInWorld ]
					ifFalse: [
						yaIniciado := contrato verificarFecha.
						yaIniciado
							ifTrue: [ output3 openInWorld ]
							ifFalse: [
								input := UIManager default request:
									         'Ingrese la nueva fecha (YYYY-MM-DD): '.
								fecha := Date readFrom: input readStream.

								input := UIManager default request:
									         'Ingrese una hora (HH:MM:SS): '.
								hora := Time readFrom: input readStream.

								reprogramado := contrato reprogramar: fecha hora: hora.
								reprogramado
									ifFalse: [ output4 openInWorld ]
									ifTrue: [ output5 openInWorld ] ] ] ] ]
]

{ #category : #'propias de la clase' }
ReprogramarContratoVisual >> reprogramarContratoUrgente [

	| output1 output2 output3 output4 output5 output6 input numero contrato fecha hora esMudanza reprogramado yaCancelado yaIniciado | 

	output1 := DialogWindowMorph new.
	output1 title: 'El contrato no existe.'.

	output2 := DialogWindowMorph new.
	output2 title: 'El contrato ya fue cancelado.'.

	output3 := DialogWindowMorph new.
	output3 title: 'El contrato ya fue iniciado.'.
		
	output4 := DialogWindowMorph new.
	output4 title: 'No se pudo reprogramar el contrato.'.

	output5 := DialogWindowMorph new.
	output5 title: 'El contrato fue reprogramado.'.
	
	output6 := DialogWindowMorph new.
	output6 title: 'El contrato no es Mudaza.'.

	numero := UIManager default request: 'Ingrese el numero del contrato que quiere reprogramar:'.

	contrato := empresa buscarContrato: numero.	 
	contrato ifNil: [ output1 openInWorld ] 
				ifNotNil: [ 	esMudanza := (contrato getServicio) getNombre.
					 ( ( esMudanza = 'MudanzaLocal' ) or: (esMudanza = 'MudanzaNacional' or: esMudanza = 'MudanzaInternacional' ) ) ifFalse: [ output6 openInWorld ]
										 ifTrue: [ yaCancelado := contrato getCancelado.
											 	yaCancelado ifTrue: [ output2 openInWorld ] 
																ifFalse: [ yaIniciado := contrato verificarFecha.
																		 yaIniciado ifTrue: [ output3 openInWorld ]  
														 								ifFalse: [ 
																								input := UIManager default request: 'Ingrese la nueva fecha (YYYY-MM-DD): '.
																								fecha := Date readFrom: input readStream.
																								
																								input := UIManager default request:
									         													'Ingrese una hora (HH:MM:SS): '.
																								hora := Time readFrom: input readStream.
																								
																								reprogramado  := contrato reprogramarUrgente:  fecha hora: hora .
																								reprogramado  ifFalse: [ output4 openInWorld ] 
																											ifTrue: [ output5 openInWorld ] ] ] ] ].
]
