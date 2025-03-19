Class {
	#name : #RegistrarServicioMudanzaInternacionalVisual,
	#superclass : #RegitrarServicioMudanza,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarServicioMudanzaInternacionalVisual >> initialize: laEmpresa [
	empresa := laEmpresa .
	self registrarServicio .
]

{ #category : #'propias de la clase' }
RegistrarServicioMudanzaInternacionalVisual >> registrarServicio [

	| input output1 output2 valorAdAduana valorAdTransporte valorAdSeguro |

	super registrarServicio . 
	
	output1  := DialogWindowMorph new.
	output1  title: 'No se puedo registrar el servicio.'. 

	output2  := DialogWindowMorph new.
	output2  title: 'El servicio fue registrado.'.
	
	servicio ifNil: [ 
		
		input := UIManager default request: ' ''Ingrese el valor adicional por aduana: '.
		valorAdAduana  := Number readFrom: input readStream.
		
		input := UIManager default request: 'Ingrese el valor adicional por transporte: '.
		valorAdTransporte := Number readFrom: input readStream.
		
		input := UIManager default request: 'Ingrese el valor adicional por seguro internacional: '.
		valorAdSeguro   := Number readFrom: input readStream.
		
		registrado  := empresa registrarServicioMudanzaInternacional: id nombre: nombre descripcion: descripcion valorBase: valorBase capacidad: capacidad valorAdEmb: valorAdEmbalaje valorAdAlt: valorAdAltura valorAdAduana: valorAdAduana valorAdTransporte: valorAdTransporte valorAdSeguro: valorAdSeguro  .
		registrado ifNil: [ output1  openInWorld ] 
				ifNotNil: [ output2 openInWorld ].
	
		 ] .
]
