Class {
	#name : #MudanzaNacional,
	#superclass : #ServicioMudanza,
	#instVars : [
		'alInterior',
		'valorAdiFragil',
		'valorAdiDistExtra'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
MudanzaNacional class >> crear: unId nombre: unNombre desc: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura alInterior: esAlInterior valorAdiFragil: adicionalFragil valorAdiDistExtra: adicionalDistExtra [

	| nuevaMudanzaNacional |
	
	nuevaMudanzaNacional := self new.
	
	nuevaMudanzaNacional inicializar: unId nombre: unNombre desc: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura alInterior: esAlInterior valorAdiFragil: adicionalFragil valorAdiDistExtra: adicionalDistExtra.
	
	^ nuevaMudanzaNacional
	
	
]

{ #category : #'propias de la clase' }
MudanzaNacional >> calcularValorTotal [
	
	^ super calcularValorTotal asNumber + valorAdiFragil asNumber + ( 20 atRandom * valorAdiDistExtra asNumber)
]

{ #category : #observadores }
MudanzaNacional >> getAlInterior [

	^ alInterior 
]

{ #category : #observadores }
MudanzaNacional >> getValorAdiDistExtra [ 

	^ valorAdiDistExtra 
]

{ #category : #observadores }
MudanzaNacional >> getValorAdiFragil [

	^ valorAdiFragil 
]

{ #category : #inicializadores }
MudanzaNacional >> inicializar: unId nombre: unNombre desc: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura alInterior: esAlInterior valorAdiFragil: adicionalFragil valorAdiDistExtra: adicionalDistExtra [
	
	self inicializar: unId nombre: unNombre desc: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura.
		
	alInterior := esAlInterior .
	valorAdiFragil := adicionalFragil .
	valorAdiDistExtra := adicionalDistExtra .
	
	
]

{ #category : #printing }
MudanzaNacional >> printString [ 
	
	| cad |
	
	cad := super printString .
	
	^ cad asString, ' Es Al Interior: ', alInterior asString , ' Valor Ad. Fragil: ', valorAdiFragil asString , ' Valor Ad Dist. Extra: ', valorAdiDistExtra asString.
]

{ #category : #modificadores }
MudanzaNacional >> setAlInterior: esAlInterior [

	alInterior := esAlInterior 
]

{ #category : #modificadores }
MudanzaNacional >> setValorAdiDistExtra: adicionalExtra [

	valorAdiDistExtra := adicionalExtra
]

{ #category : #modificadores }
MudanzaNacional >> setValorAdiFragil: adicionalFragil [

	valorAdiFragil := adicionalFragil
]
