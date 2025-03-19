Class {
	#name : #ListadoContratosSemanalesVisual,
	#superclass : #ListadoDatosVisual,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
ListadoContratosSemanalesVisual >> initialize: laEmpresa [

	| empresa origen titulo contratos botonCerrar|

	self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 400 @ 600).	 
		 	 
	origen := self innerBounds origin.
	
	empresa := laEmpresa .
	
	titulo := StringMorph new.
	titulo
		contents: 'CONTRATOS SEMANALES';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 18);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: self innerBounds origin + (20 @ 20).
	self addMorph: titulo .
	
	contratos := TextMorph new.
	contratos
		contents: empresa generarListadoContratosSemanal asString;
		color: Color black;
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 10);
		position: self innerBounds origin + (20 @ 75);
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

	 self openInWorld
]
