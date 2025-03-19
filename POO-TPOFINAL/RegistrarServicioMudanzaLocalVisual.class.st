Class {
	#name : #RegistrarServicioMudanzaLocalVisual,
	#superclass : #RegitrarServicioMudanza,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarServicioMudanzaLocalVisual >> initialize: laEmpresa [
	empresa := laEmpresa .
	self registrarServicio .
]

{ #category : #'propias de la clase' }
RegistrarServicioMudanzaLocalVisual >> registrarServicio [

	| input output1 output2 output3 distMax servCargas servDescargas |

	super registrarServicio . 
	
	output1  := DialogWindowMorph new.
	output1  title: 'No se puedo registrar el servicio'. 

	output2  := DialogWindowMorph new.
	output2  title: 'El servicio fue registrado.'.
	
	output3  := DialogWindowMorph new.
	output3  title: 'La distancia Maxima para mudanzas locales es de hasta 500 km. Por favor elija una mudanza Nacional.'.
	
	servicio ifNil: [ 
		
		input := UIManager default request: ' ''Ingrese el la distancia maxima: '.
		distMax  := Number readFrom: input readStream.
		
		(distMax > 500) ifTrue: [ output3 openInWorld ] 
							 ifFalse: [ 		
							 servCargas := UIManager default confirm: '¿Tiene servicio de cargas?'.
		
							 servDescargas := UIManager default confirm: '¿Tiene servicio de descargas?'.
		
		   					 registrado  := empresa registrarServicioMudanzaLocal: id nombre: nombre descripcion: descripcion  valorBase: valorBase  capacidad: capacidad  valorAdEmb: valorAdEmbalaje  valorAdAlt: valorAdAltura  distMax: distMax  servCargas: servCargas  servDescargas: servDescargas  .
							 registrado ifNil: [ output1  openInWorld ] 
										   ifNotNil: [ output2 openInWorld ]. ]
	
		 ] .
]
