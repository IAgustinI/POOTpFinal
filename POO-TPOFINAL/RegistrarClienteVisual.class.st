Class {
	#name : #RegistrarClienteVisual,
	#superclass : #BorderedMorph,
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #initialization }
RegistrarClienteVisual >> initialize: laEmpresa [

	| "colDirecciones" empresa registrado cliente dni nombre apellido telefono direccion calle nro piso dpto barrio ciudad provincia pais input output1 output2 output3 |

	empresa := laEmpresa . 
	
	output1  := DialogWindowMorph new.
	output1  title: 'El cliente ya existe.'.
	
	output2  := DialogWindowMorph new.
	output2  title: 'El cliente fue registrado.'.
	
	output3  := DialogWindowMorph new.
	output3  title: 'No se puedo registrar al cliente.'.
		
	input := UIManager default request: 'Ingrese el DNI del cliente:'.
	dni := Number readFrom: input readStream.
	
	cliente  := empresa buscarCliente: dni.	
	cliente  ifNotNil: [ output1 openInWorld ] 
				ifNil: [ 
					nombre := UIManager default request: 'Ingrese el nombre:'.
					
					apellido := UIManager default request: 'Ingrese el apellido:'.
					
					telefono := UIManager default request: 'Ingrese el telefono:'.
					
					"colDirecciones := empresa getColDirecciones .
					direccion := UIManager default chooseFrom: colDirecciones message: 'Seleccione una direccion:' ."
					
					calle := UIManager default request: 'Registrando direccion del cliente. Ingrese el nombre la calle:'.
					
					nro := UIManager default request: 'Ingrese el numero de la calle:'.
					
					piso := UIManager default request: 'Ingrese el piso:'.
					
					dpto := UIManager default request: 'Ingrese el departamento:'.
					
					barrio := UIManager default request: 'Ingrese el barrio:'.
					
					ciudad := UIManager default request: 'Ingrese la ciudad:'.
					
					provincia := UIManager default request: 'Ingrese la provincia:'.
					
					pais := UIManager default request: 'Ingrese el pais:'.
					
					direccion := Direccion crear: nil calle: calle nro: nro piso: piso dpto: dpto barrio: barrio ciudad: ciudad provincia: provincia pais: pais . 
					
					registrado := empresa registrarCliente: dni nombre: nombre  apellido: apellido  telfono: telefono  direccion: direccion .
				  	registrado ifNotNil: [ output2  openInWorld ] 
								  ifNil: [ output3 openInWorld ].	
					
					]
]
