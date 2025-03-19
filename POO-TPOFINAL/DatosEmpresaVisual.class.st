Class {
	#name : #DatosEmpresaVisual,
	#superclass : #BorderedMorph,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
DatosEmpresaVisual >> initialize: laEmpresa [

	| empresa titulo origen cadenaDatosEmpresa botonMinimizar botonCerrar |

	self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 400 @ 600).	 
		
	empresa := laEmpresa .
	  
	origen := self innerBounds origin.
	 
	titulo := StringMorph new.
	titulo
		contents: 'DATOS EMPRESA';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 18);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: origen + (20 @ 20).
	self addMorph: titulo. 
	
	cadenaDatosEmpresa := TextMorph new.
	cadenaDatosEmpresa
		contents: empresa toString asString;
		color: Color black;
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 12);
		position: origen + (50 @ 100).
	self addMorph: cadenaDatosEmpresa.
	
	botonMinimizar:= BotonAccion new.
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
	botonCerrar mouseAction: [
		titulo delete .
		cadenaDatosEmpresa delete.
		self delete ].

	self openInWorld
]
