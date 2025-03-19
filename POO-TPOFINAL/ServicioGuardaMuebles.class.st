Class {
	#name : #ServicioGuardaMuebles,
	#superclass : #Servicio,
	#instVars : [
		'tamañoDisponible',
		'aislamiento',
		'guardallaves'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
ServicioGuardaMuebles class >> crear: unId nombre: unNombre descripcion: unaDesc valorBase: unValorBase tamañoDisponible: unTamaño Aislamiento: tieneAislamiento Guardallaves: conGuardallaves [

	| nuevoGuardaMuebles |
	
	nuevoGuardaMuebles := self new.
	
	nuevoGuardaMuebles inicializar: unId nombre: unNombre descripcion: unaDesc valorBase: unValorBase tamañoDisponible: unTamaño Aislamiento: tieneAislamiento Guardallaves: conGuardallaves.
	
	^ nuevoGuardaMuebles 
]

{ #category : #observadores }
ServicioGuardaMuebles >> getAislamientoTermico [

	^ aislamiento
]

{ #category : #observadores }
ServicioGuardaMuebles >> getGuardaLlaves [

	^ guardallaves
]

{ #category : #observadores }
ServicioGuardaMuebles >> getTamañoDisponible [

	^ tamañoDisponible
]

{ #category : #inicializadores }
ServicioGuardaMuebles >> inicializar: unId nombre: unNombre descripcion: unaDesc valorBase: unValorBase tamañoDisponible: unTamaño Aislamiento: tieneAislamiento Guardallaves: conGuardallaves [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	self inicializar: unId nombre: unNombre desc: unaDesc valorBase: unValorBase.
	tamañoDisponible := unTamaño.
	aislamiento := tieneAislamiento.
	guardallaves := conGuardallaves.
]

{ #category : #'propias de la clase' }
ServicioGuardaMuebles >> printString [ 
	
	| cad |
	
	cad := super printString .
	
	^ cad asString, ' Aislamiento: ', aislamiento asString , ' Guardallaves: ', guardallaves asString , ' Tamaño Disponible: ', tamañoDisponible  asString.
]

{ #category : #modificadores }
ServicioGuardaMuebles >> setAislamientoTermico: unAislamiento [

	aislamiento := unAislamiento
]

{ #category : #modificadores }
ServicioGuardaMuebles >> setGuardaLlaves: unaLlave [

	guardallaves := unaLlave
]

{ #category : #modificadores }
ServicioGuardaMuebles >> setTamañoDisponible: unTamaño [

	tamañoDisponible := unTamaño
]

{ #category : #'propias de la clase' }
ServicioGuardaMuebles >> toString [ 
	
	^ 'Aislamiento: ', aislamiento asString , 'Guardallaves: ', guardallaves asString , 'Tamaño Disponible: ', tamañoDisponible  asString.
]
