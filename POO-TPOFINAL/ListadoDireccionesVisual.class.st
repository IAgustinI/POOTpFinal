Class {
	#name : #ListadoDireccionesVisual,
	#superclass : #ListadoDatosVisual,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
ListadoDireccionesVisual >> initialize: laEmpresa [

	| empresa origen titulo direcciones botonCerrar|

	self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 400 @ 600). 
		 	 
	origen := self innerBounds origin. 
	
	empresa := laEmpresa.
	
	titulo := StringMorph new.
	titulo
		contents: 'DIRECCIONES';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 16);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: origen + (20 @ 20).
	self addMorph: titulo .
	
	direcciones := TextMorph new.
	direcciones
		contents: empresa generarListadoDirecciones asString ;
		color: Color black;
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 10);
		position: origen + (20 @ 75);
		extent: (2000@10).
	self addMorph: direcciones.
	self extent: direcciones extent + (100@100).
	
	botonCerrar := BotonAccion new.	
	self addMorph: botonCerrar.
	botonCerrar position: self innerBounds origin + (300 @ 16).
	botonCerrar label: 'X'.
	botonCerrar extent: 48 @ 36.
	botonCerrar mouseAction: [
		titulo delete .
		direcciones delete .
		self delete ].

	 self openInWorld
]
