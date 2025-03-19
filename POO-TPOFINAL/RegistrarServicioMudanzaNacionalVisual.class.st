Class {
	#name : #RegistrarServicioMudanzaNacionalVisual,
	#superclass : #RegitrarServicioMudanza,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarServicioMudanzaNacionalVisual >> initialize: laEmpresa [
	empresa := laEmpresa .
	self registrarServicio .
]

{ #category : #'propias de la clase' }
RegistrarServicioMudanzaNacionalVisual >> registrarServicio [

	| input output1 output2 alInterior valorAdiFragil valorAdiDistExtra |

	super registrarServicio . 
	
	output1  := DialogWindowMorph new.
	output1  title: 'No se puedo registrar el servicio.'. 

	output2  := DialogWindowMorph new.
	output2  title: 'El servicio fue registrado.'.
	
	servicio ifNil: [ 
		
		alInterior := UIManager default confirm: '¿Es al interior?'.
		
		input := UIManager default request: 'Ingrese el valor adicional por el seguro para materiales fragiles: '.
		valorAdiFragil := Number readFrom: input readStream.
		
		input := UIManager default request: 'Ingrese el valor adicional por la distancia extra: '.
		valorAdiDistExtra   := Number readFrom: input readStream.
		
		registrado  := empresa registrarServicioMudanzaNacional: id nombre: nombre desc: descripcion  valorBase: valorBase  capacidad: capacidad  valorAdEmb: valorAdEmbalaje  valorAdAlt: valorAdAltura  alInterior: alInterior  valorAdiFragil: valorAdiFragil  valorAdiDistExtra: valorAdiDistExtra   .
		registrado ifNil: [ output1  openInWorld ] 
				ifNotNil: [ output2 openInWorld ].
	
		 ] .
]
