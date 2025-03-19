Class {
	#name : #RegistrarDireccionVisual,
	#superclass : #BorderedMorph,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarDireccionVisual >> initialize: laEmpresa [

	| input output1 output2 output3 empresa direccion codigo calle nro piso dpto barrio ciudad provincia pais registrado |

	empresa := laEmpresa . 
	
	output1  := DialogWindowMorph new.
	output1  title: 'El numero ya esta en uso. Ingrese otro numero.'.
	
	output2  := DialogWindowMorph new.
	output2  title: 'La direccion fue registrada.'.
	
	output3  := DialogWindowMorph new.
	output3  title: 'No se puedo registrar la direccion.'.
		
	input := UIManager default request: 'Ingrese un numero para guardar la direccion:'.
	codigo := Number readFrom: input readStream.
	
	direccion  := empresa buscarDireccion: codigo.	
	direccion  ifNotNil: [ output1 openInWorld ]         
				ifNil: [ 
					calle := UIManager default request: 'Ingrese el nombre la calle:'.
					
					nro := UIManager default request: 'Ingrese el numero de la calle:'.
					
					piso := UIManager default request: 'Ingrese el piso:'.
					
					dpto := UIManager default request: 'Ingrese el departamento:'.
					
					barrio := UIManager default request: 'Ingrese el barrio:'.
					
					ciudad := UIManager default request: 'Ingrese la ciudad:'.
					
					provincia := UIManager default request: 'Ingrese la provincia:'.
					
					pais := UIManager default request: 'Ingrese el pais:'.
					
					registrado := empresa registrarDireccion: codigo  calle: calle nro: nro piso: piso  dpto: dpto  barrio: barrio  ciudad: ciudad  provincia: provincia  pais: pais  .
				  		registrado ifNotNil: [ output2  openInWorld ] 
									  ifNil: [ output3 openInWorld ].	
					
					]
]
