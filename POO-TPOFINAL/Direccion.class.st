Class {
	#name : #Direccion,
	#superclass : #Object,
	#instVars : [
		'codigo',
		'calle',
		'nro',
		'piso',
		'dpto',
		'barrio',
		'ciudad',
		'provincia',
		'pais'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
Direccion class >> crear: unCodigo calle: unaCalle nro: unNro piso: unPiso dpto: unDpto barrio: unBarrio ciudad: laCiudad provincia: laProvincia pais: elPais [

	| nuevaDireccion |
	nuevaDireccion := self new.

	nuevaDireccion inicializar: unCodigo calle: unaCalle nro: unNro piso: unPiso dpto: unDpto barrio: unBarrio ciudad: laCiudad provincia: laProvincia pais: elPais.

	^ nuevaDireccion
]

{ #category : #'propias de la clase' }
Direccion >> equal: unCodigo [

	^ codigo = unCodigo
]

{ #category : #observadores }
Direccion >> getBarrio [

	^ barrio
]

{ #category : #observadores }
Direccion >> getCalle [ 
	
	^ calle
]

{ #category : #observadores }
Direccion >> getCiudad [

	^ ciudad
]

{ #category : #observadores }
Direccion >> getCodigo [

	^ codigo
]

{ #category : #observadores }
Direccion >> getDpto [

	^ dpto
]

{ #category : #observadores }
Direccion >> getNro [

	^ nro
]

{ #category : #observadores }
Direccion >> getPais [

	^ pais
]

{ #category : #observadores }
Direccion >> getPiso [

	^ piso
]

{ #category : #observadores }
Direccion >> getProvincia [

	^ provincia
]

{ #category : #inicializadores }
Direccion >> inicializar: unCodigo calle: unaCalle nro: unNro piso: unPiso dpto: unDpto barrio: unBarrio ciudad: laCiudad provincia: laProvincia pais: elPais [

	codigo := unCodigo .
	calle := unaCalle.
	nro := unNro.
	piso := unPiso.
	dpto := unDpto.
	barrio := unBarrio.
	ciudad := laCiudad.
	provincia := laProvincia .
	pais := elPais .  
	
]

{ #category : #printing }
Direccion >> printString [

	^ 'Codigo: ' , codigo asString, ', calle: ' , calle , ', numero: ' , nro asString, ', piso: ' , piso asString, ', departamento: ' , dpto asString , ', barrio: ' , barrio , ', ciudad: ' , ciudad, ', provincia: ' , provincia , ', pais: ', pais .
	
]

{ #category : #modificadores }
Direccion >> setBarrio: unBarrio [

	barrio := unBarrio
]

{ #category : #modificadores }
Direccion >> setCalle: unaCalle [

	calle := unaCalle
]

{ #category : #modificadores }
Direccion >> setDpto: unDpto [

	dpto := unDpto
]

{ #category : #modificadores }
Direccion >> setNro: unNro [

	nro := unNro
]

{ #category : #modificadores }
Direccion >> setPiso: unPiso [

	piso := unPiso
]

{ #category : #'propias de la clase' }
Direccion >> toString [

	^ Character cr asString , '           - calle: ' , calle asString
	  , Character cr asString , '           - nro: ' , nro asString
	  , Character cr asString , '           - piso: ' , piso asString
	  , Character cr asString , '           - dpto: ' , dpto asString
	  , Character cr asString , '           - barrio: ' , barrio asString
	  , Character cr asString , '           - ciudad: ' , ciudad asString
	  , Character cr asString , '           - provincia: ' , provincia asString
	  , Character cr asString , '           - pais: ' , pais asString
]
