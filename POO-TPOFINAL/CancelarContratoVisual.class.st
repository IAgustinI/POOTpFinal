Class {
	#name : #CancelarContratoVisual,
	#superclass : #BorderedMorph,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
CancelarContratoVisual >> initialize: laEmpresa [

	| output1 output2 output3 output4 output5 empresa numero contrato cancelado yaCancelado yaIniciado |
	
	"self initialize .
	self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 600 @ 800)."	 

	empresa := laEmpresa . 

	"origen := self innerBounds origin.

	titulo := StringMorph new.
	titulo
		contents: 'CANCELAR CONTRATOS';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 12);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: self innerBounds origin + (16 @ 16). 
	self addMorph: titulo.	  
	
	botonCerrar := BotonAccion new. 	
	self addMorph: botonCerrar.
	botonCerrar position: self innerBounds origin + (456 @ 16).
	botonCerrar label: 'X'.
	botonCerrar extent: 128 @ 36.
	botonCerrar mouseAction: [ self delete ]."
	
	output1 := DialogWindowMorph new.
	output1 title: 'El contrato no existe.'.

	output2 := DialogWindowMorph new.
	output2 title: 'El contrato ya fue cancelado.'.

	output3 := DialogWindowMorph new.
	output3 title: 'El contrato ya fue iniciado.'.
		
	output4 := DialogWindowMorph new.
	output4 title: 'No se puedo cancelar el contrato.'.

	output5 := DialogWindowMorph new.
	output5 title: 'El contrato fue cancelado.'.

	numero := UIManager default request: 'Ingrese el numero del contrato que quiere cancelar:'.

	contrato := empresa buscarContrato: numero.	
	contrato ifNil: [ output1 openInWorld ] 
				ifNotNil: [ 	yaCancelado := contrato getCancelado.
						yaCancelado ifTrue: [ output2 openInWorld ] 
										ifFalse: [ yaIniciado := contrato verificarFecha.
											yaIniciado ifTrue: [ output3 openInWorld ] 
														  ifFalse: [ cancelado := contrato cancelar .
																cancelado ifFalse: [ output4 openInWorld ] 
																			ifTrue: [ output5 openInWorld ] ] ] ].
	
	"self openInWorld "
]
