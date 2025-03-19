Class {
	#name : #RegistrarContratoVisual,
	#superclass : #BorderedMorph,
	#instVars : [
		'empresa',
		'contrato',
		'numero',
		'cliente',
		'servicio',
		'fecha',
		'fechaFirma',
		'colElem',
		'yaPaso',
		'registrado'
	],
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #'propias de la clase' }
RegistrarContratoVisual >> ingresarElementos [
	
	|listaElementos elemento respuesta|
	
	listaElementos := OrderedCollection new.
	
	respuesta := 1.
	
	[ respuesta = 1 ] whileTrue: [elemento := UIManager default request: 'Ingrese un elemento'. 
	listaElementos add: elemento . respuesta := UIManager default chooseFrom: #('Si' 'No') title: '¿Desea seguir agregando elementos a la lista?'].
	
^listaElementos
]

{ #category : #initialization }
RegistrarContratoVisual >> initialize: laEmpresa [

	| origen titulo botonMinimizar botonCerrar botonGuardamuebles botonMudanzaLocal botonMudanzaNacional botonMudanzaInternacional |
	
	self initialize .
	self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 400 @ 800) .
 
	empresa := laEmpresa . 

	origen := self innerBounds origin.

	titulo := StringMorph new.
	titulo
		contents: 'REGISTRAR CONTRATOS';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 12);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: self innerBounds origin + (16 @ 16). 

	self addMorph: titulo.
	
	botonGuardamuebles := BotonAccion new.
	self addMorph: botonGuardamuebles.
	botonGuardamuebles position: origen  + (75 @ 150).
	botonGuardamuebles label: 'CONTRATO GUARDAMUEBLES'.
	botonGuardamuebles extent: 276 @ 56.
	botonGuardamuebles mouseAction: [	RegistrarContratoGuardaMueblesVisual new initialize: empresa ].
	
	
	botonMudanzaLocal := BotonAccion new.	
	self addMorph: botonMudanzaLocal.	
	botonMudanzaLocal position: origen + (75 @ 300).	
	botonMudanzaLocal label: 'CONTRATO MUDANZA LOCAL'.
	botonMudanzaLocal extent: 276 @ 56.
	botonMudanzaLocal mouseAction: [ 	RegistrarContratoMudanzaLocalVisual new initialize: empresa ].
		
	botonMudanzaNacional := BotonAccion new.	
	self addMorph: botonMudanzaNacional.	
	botonMudanzaNacional position: origen + (75 @ 450).	
	botonMudanzaNacional label: 'CONTRATO MUDANZA NACIONAL'.
	botonMudanzaNacional extent: 276 @ 56.
	botonMudanzaNacional mouseAction: [ RegistrarContratoMudanzaNacionalVisual new initialize: empresa ].
		
	botonMudanzaInternacional := BotonAccion new.	
	self addMorph: botonMudanzaInternacional.	
	botonMudanzaInternacional position: origen + (75 @ 600).	
	botonMudanzaInternacional label: 'CONTRATO MUDANZA INTERNACIONAL'.
	botonMudanzaInternacional extent: 276 @ 56.
	botonMudanzaInternacional mouseAction: [ RegistrarContratoMudanzaInternacionalVisual new initialize: empresa ].	
		
	botonMinimizar:= BotonAccion new.
	self addMorph: botonMinimizar.
	botonMinimizar position: origen + (250 @ 20).
	botonMinimizar label: '_'.
	botonMinimizar extent: 48 @ 36.
	botonMinimizar mouseAction: [ self collapse ].  
	
	botonCerrar := BotonAccion new. 	
	self addMorph: botonCerrar.
	botonCerrar position: self innerBounds origin + (300 @ 20).
	botonCerrar label: 'X'.
	botonCerrar extent: 48 @ 36.
	botonCerrar mouseAction: [ self delete ].
	
	self openInWorld 
]

{ #category : #'propias de la clase' }
RegistrarContratoVisual >> registrarContrato [

	| colClientes colServicios input output |
	
	output  := DialogWindowMorph new.
	output  title: 'El contrato ya existe.'.
	
	numero := UIManager default request:
		      'Ingrese la abreviatura y un numero de tres cifras con el que quiere registrar al contrato. Ejemplo (GuardaMuebles): GDM000 '.
	
	contrato := empresa buscarContrato: numero.	
	contrato ifNotNil: [ output openInWorld ] 
				ifNil: [  
		
		colClientes := empresa getColClientes .			
		input  := UIManager default chooseFrom: colClientes message: 'Seleccione un cliente:' .		
		cliente  := colClientes at: input.	
	
		colServicios := empresa getColServicios  .			
		input := UIManager default chooseFrom: colServicios message: 'Seleccione un servicio:' .	
		servicio := colServicios at: input .
		
		fechaFirma := Date today .
	
		input := UIManager default request: 'Ingrese la fecha de inicio (YYYY-MM-DD): '.
		fecha := Date readFrom: input readStream.
		
		yaPaso := fecha isBefore: ( Date today ).

		colElem := self ingresarElementos ]

]
