Class {
	#name : #ListadoServiciosVisual,
	#superclass : #ListadoDatosVisual,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
ListadoServiciosVisual >> initialize: laEmpresa [

	| empresa origen titulo servicios botonCerrar|

	self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 400 @ 600). 
		 	 
	origen := self innerBounds origin. 
	
	empresa := laEmpresa.
	
	titulo := StringMorph new.
	titulo
		contents: 'SERVICIOS';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 16);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: origen + (20 @ 20).
	self addMorph: titulo .
	
	servicios := TextMorph new.
	servicios
		contents: empresa generarListadoSerivicios asString ;
		color: Color black;
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 10);
		position: origen + (20 @ 75);
		extent: (2000@10).
	self addMorph: servicios.
	self extent: servicios extent + (100@100).
	
	botonCerrar := BotonAccion new.	
	self addMorph: botonCerrar.
	botonCerrar position: self innerBounds origin + (300 @ 16).
	botonCerrar label: 'X'.
	botonCerrar extent: 48 @ 36.
	botonCerrar mouseAction: [
		titulo delete .
		servicios delete .
		self delete ].

	 self openInWorld
]
