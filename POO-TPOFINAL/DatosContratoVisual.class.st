Class {
	#name : #DatosContratoVisual,
	#superclass : #ListadoDatosVisual,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
DatosContratoVisual >> initialize: laEmpresa [

	| numero contrato output1 empresa origen titulo contratos botonCerrar|

	self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 400 @ 600). 
		 	 
	origen := self innerBounds origin. 
	
	empresa := laEmpresa.
	
	output1 := DialogWindowMorph new.
	output1 title: 'El contrato no existe.'.
	
	numero := UIManager default request: 'Ingrese el numero del contrato:'.

	contrato := empresa buscarContrato: numero.	
		
	contrato ifNil: [ output1 openInWorld ]
		 		ifNotNil: [  
	titulo := StringMorph new.
	titulo
		contents: 'DATOS DE UN CONTRATO';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 16);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: origen + (20 @ 20).
	self addMorph: titulo .
	
	contratos := TextMorph new.
	contratos
		contents: contrato toString;
		color: Color black;
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 10);
		position: origen + (20 @ 75);
		extent: (2000@10).
	self addMorph: contratos.
	self extent: contratos extent + (100@100).
	
	botonCerrar := BotonAccion new.	
	self addMorph: botonCerrar.
	botonCerrar position: self innerBounds origin + (300 @ 16).
	botonCerrar label: 'X'.
	botonCerrar extent: 48 @ 36.
	botonCerrar mouseAction: [
		titulo delete .
		contratos delete .
		self delete ].

	 self openInWorld ]
]
