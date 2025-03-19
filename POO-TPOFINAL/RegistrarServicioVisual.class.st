Class {
	#name : #RegistrarServicioVisual,
	#superclass : #BorderedMorph,
	#instVars : [
		'empresa',
		'servicio',
		'id',
		'nombre',
		'descripcion',
		'valorBase',
		'registrado'
	],
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarServicioVisual >> initialize: laEmpresa [

	| origen titulo botonMinimizar botonCerrar botonGuardamuebles botonMudanzaLocal botonMudanzaNacional botonMudanzaInternacional |
	
	self initialize .
	self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 400 @ 800).	 

	empresa := laEmpresa . 

	origen := self innerBounds origin.

	titulo := StringMorph new.
	titulo
		contents: 'REGISTRAR SERVICIOS';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 12);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: self innerBounds origin + (16 @ 16). 

	self addMorph: titulo.
	
	botonGuardamuebles := BotonAccion new.
	self addMorph: botonGuardamuebles.
	botonGuardamuebles position: origen  + (75 @ 150).
	botonGuardamuebles label: 'SERVICIO GUARDAMUEBLES'.
	botonGuardamuebles extent: 276 @ 56.
	botonGuardamuebles mouseAction: [	RegistrarServicioGuardaMueblesVisual new initialize: empresa ].
	
	
	botonMudanzaLocal := BotonAccion new.	
	self addMorph: botonMudanzaLocal.	
	botonMudanzaLocal position: origen + (75 @ 300).	
	botonMudanzaLocal label: 'SERVICIO MUDANZA LOCAL'.
	botonMudanzaLocal extent: 276 @ 56.
	botonMudanzaLocal mouseAction: [ RegistrarServicioMudanzaLocalVisual new initialize: empresa ].
		
	botonMudanzaNacional := BotonAccion new.	
	self addMorph: botonMudanzaNacional.	
	botonMudanzaNacional position: origen + (75 @ 450).	
	botonMudanzaNacional label: 'SERVICIO MUDANZA NACIONAL'.
	botonMudanzaNacional extent: 276 @ 56.
	botonMudanzaNacional mouseAction: [ RegistrarServicioMudanzaNacionalVisual new initialize: empresa ].
		
	botonMudanzaInternacional := BotonAccion new.	
	self addMorph: botonMudanzaInternacional.	
	botonMudanzaInternacional position: origen + (75 @ 600).	
	botonMudanzaInternacional label: 'SERVICIO MUDANZA INTERNACIONAL'.
	botonMudanzaInternacional extent: 276 @ 56.
	botonMudanzaInternacional mouseAction: [ RegistrarServicioMudanzaInternacionalVisual new initialize: empresa  ].	  
	
	botonMinimizar := BotonAccion new.
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
RegistrarServicioVisual >> registrarServicio [

	| input output |
	
	output  := DialogWindowMorph new.
	output  title: 'El serivicio ya existe.'.
	
	id := UIManager default request:
		      'Ingrese la incial y un numero de dos cifras con el que quiere registrar al servicio. Ejemplo (Mudanza Local): ML00 '.
	
	servicio := empresa buscarServicio: id.	
	 servicio ifNotNil: [ output openInWorld ] 
	 ifNil: [  
		
		nombre := UIManager default request:
		      'Ingrese el nombre del servicio sin espacios. Ejemplo (Mudanza Nacional): MudanzaNacional '.
	
		descripcion  := UIManager default request:
		      'Ingrese una descripcion: '.	
	
		input := UIManager default request: 'Ingrese el Valor Base: '.
		valorBase  := Number readFrom: input readStream. ]

]
