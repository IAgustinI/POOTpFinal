Class {
	#name : #MudanzaLocal,
	#superclass : #ServicioMudanza,
	#instVars : [
		'distMax',
		'servCargas',
		'servDescargas'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
MudanzaLocal class >> crear: unId nombre: unNombre descripcion: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura distMax: unaDistMax servCargas: ofreceCargas servDescargas: ofreceDescargas [

	| nuevaMudanzaLocal |
	nuevaMudanzaLocal := self new.

	nuevaMudanzaLocal inicializar: unId nombre: unNombre descripcion: unaDescripcion  valorBase: unValorBase capacidad: unaCapacidad 	valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura distMax: unaDistMax servCargas: ofreceCargas servDescargas: ofreceDescargas.

	^ nuevaMudanzaLocal
]

{ #category : #observadores }
MudanzaLocal >> getDistMax [

	^ distMax 
]

{ #category : #observadores }
MudanzaLocal >> getServCargas [

	^ servCargas 
]

{ #category : #observadores }
MudanzaLocal >> getServDescargas [

	^ servDescargas 
]

{ #category : #inicializadores }
MudanzaLocal >> inicializar: unId nombre: unNombre descripcion: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura distMax: unaDistMax servCargas: ofreceCargas servDescargas: ofreceDescargas [

	self inicializar: unId nombre: unNombre desc: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura.
	
	distMax := unaDistMax.
	servCargas := ofreceCargas.
	servDescargas := ofreceDescargas.
]

{ #category : #printing }
MudanzaLocal >> printString [ 
	
	| cad |
	
	cad := super printString .
	
	^ cad asString, ' Distancia Maxima: ', distMax asString , ' Servicio de Cargas: ', servCargas asString , ' Servicio Descargas: ', servDescargas asString.
]

{ #category : #modificadores }
MudanzaLocal >> setDistMax: unaDistMAx [

	distMax := unaDistMAx
]

{ #category : #modificadores }
MudanzaLocal >> setOfreceCargas: ofreceCargas [

	servCargas := ofreceCargas
]

{ #category : #modificadores }
MudanzaLocal >> setOfreceDescargas: ofreceDescargas [

	servDescargas := ofreceDescargas
]
