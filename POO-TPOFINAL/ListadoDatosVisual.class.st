Class {
	#name : #ListadoDatosVisual,
	#superclass : #BorderedMorph,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
ListadoDatosVisual >> initialize: laEmpresa [

	| empresa origen titulo botonListarContratos botonListarSemanalmente botonDatosContrato botonListarClientes botonListarDirecciones botonListarServicios ventanaContratos ventanaContratosSemanales ventanaDatosContrato ventanaClientes ventanaDirecciones ventanaServicios botonMinimizar botonCerrar |

   self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 400 @ 800).	 
		
	empresa := laEmpresa . 

	origen := self innerBounds origin. 

	titulo := StringMorph new.
	titulo
		contents: 'LISTAR DATOS';
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 12);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: self innerBounds origin + (16 @ 16). 
	self addMorph: titulo.
	
	botonListarContratos := BotonAccion new.
	self addMorph: botonListarContratos.
	botonListarContratos position: origen  + (75 @ 100).
	botonListarContratos label: 'LISTAR TODOS LOS CONTRATOS'.
	botonListarContratos extent: 276 @ 56.
	botonListarContratos mouseAction: [ 
		ventanaContratos := ListadoContratosInicioVisual new .
		ventanaContratos initialize: empresa ].
	
	
	botonListarSemanalmente := BotonAccion new.	
	self addMorph: botonListarSemanalmente.	
	botonListarSemanalmente position: origen + (75 @ 200).	
	botonListarSemanalmente label: 'LISTAR LOS CONTRATOS SEMANALES'.
	botonListarSemanalmente extent: 276 @ 56.
	botonListarSemanalmente mouseAction: [ 
		ventanaContratosSemanales := ListadoContratosSemanalesVisual new .
		ventanaContratosSemanales initialize: empresa ].
	
	botonDatosContrato := BotonAccion new.	
	self addMorph: botonDatosContrato.	
	botonDatosContrato position: origen + (75 @ 300).	
	botonDatosContrato label: 'DATOS CONTRATO'.
	botonDatosContrato extent: 276 @ 56.
	botonDatosContrato mouseAction: [ 
		ventanaDatosContrato  := DatosContratoVisual new .
		ventanaDatosContrato initialize: empresa ].	
		
	botonListarClientes := BotonAccion new.	
	self addMorph: botonListarClientes.	
	botonListarClientes position: origen + (75 @ 400).	
	botonListarClientes label: 'LISTAR CLIENTES'.
	botonListarClientes extent: 276 @ 56.
	botonListarClientes mouseAction: [ 
		ventanaClientes  := ListadoClientesVisual new .
		ventanaClientes initialize: empresa ].	
		
	botonListarDirecciones := BotonAccion new.	
	self addMorph: botonListarDirecciones.	
	botonListarDirecciones position: origen + (75 @ 500).	
	botonListarDirecciones label: 'LISTAR DIRECCIONES'.
	botonListarDirecciones extent: 276 @ 56.
	botonListarDirecciones mouseAction: [ 
		ventanaDirecciones  := ListadoDireccionesVisual new .
		ventanaDirecciones initialize: empresa ].	
		
	botonListarServicios := BotonAccion new.
	self addMorph: botonListarServicios.
	botonListarServicios position: origen  + (75 @ 600).
	botonListarServicios label: 'LISTAR SERVICIOS'.
	botonListarServicios extent: 276 @ 56.
	botonListarServicios mouseAction: [ 
		ventanaServicios := ListadoServiciosVisual new .
		ventanaServicios initialize: empresa ].
	
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
		self delete .
		].
	
	self openInWorld 
]
