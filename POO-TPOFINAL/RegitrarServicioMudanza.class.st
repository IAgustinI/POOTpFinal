Class {
	#name : #RegitrarServicioMudanza,
	#superclass : #RegistrarServicioVisual,
	#instVars : [
		'capacidad',
		'valorAdEmbalaje',
		'valorAdAltura'
	],
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegitrarServicioMudanza >> initialize: laEmpresa [
	empresa := laEmpresa .
	self registrarServicio .
	
	
]

{ #category : #'propias de la clase' }
RegitrarServicioMudanza >> registrarServicio [

	| input  |

	super registrarServicio . 
	
	servicio ifNil: [ 
		
		input := UIManager default request: 'Ingrese la capacidad disponible: '.
		capacidad  := Number readFrom: input readStream.
		
		input := UIManager default request: 'Ingrese el valor adicional por embalaje: '.
		valorAdEmbalaje := Number readFrom: input readStream.
		
		input := UIManager default request: 'Ingrese el valor adicional por altura: '.
		valorAdAltura   := Number readFrom: input readStream.
	
		 ] .
]
