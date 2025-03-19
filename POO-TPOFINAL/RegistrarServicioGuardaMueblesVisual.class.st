Class {
	#name : #RegistrarServicioGuardaMueblesVisual,
	#superclass : #RegistrarServicioVisual,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarServicioGuardaMueblesVisual >> initialize: laEmpresa [
	
	empresa := laEmpresa .
	self registrarServicio .
]

{ #category : #'propias de la clase' }
RegistrarServicioGuardaMueblesVisual >> registrarServicio [

	| input output1 output2 tamañoDisponible aislamiento guardallaves |

	super registrarServicio . 
	
	output1  := DialogWindowMorph new.
	output1  title: 'No se puedo registrar el servicio.'. 

	output2  := DialogWindowMorph new.
	output2  title: 'El servicio fue registrado.'.
	
	servicio ifNil: [ 
		
		input := UIManager default request: 'Ingrese el tamaño disponible: '.
		tamañoDisponible  := Number readFrom: input readStream.
		
		aislamiento := UIManager default confirm: '¿Tiene aislamiento?'.
		
		guardallaves := UIManager default confirm: '¿Tiene guardallaves?'.
	
		registrado  := empresa registrarServicioGuardaMuebles: id nombre: nombre descripcion: descripcion valorBase: valorBase  tamañoDisponible: tamañoDisponible  Aislamiento: aislamiento  Guardallaves:  guardallaves  .
		registrado ifNil: [ output1  openInWorld ] 
				ifNotNil: [ output2 openInWorld ].
		 ] .
]
