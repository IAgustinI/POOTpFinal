Class {
	#name : #EmpresaVisual,
	#superclass : #Morph,
	#instVars : [
		'empresa'
	],
	#category : #'POO-TPOFINAL-VISUAL'
}

{ #category : #'propias de la clase' }
EmpresaVisual >> cargarEmpresa [

	| unaDireccion cli1 cli2 cli3 cli4 cli5 cli6 cli7 mud1 mud2 mud3 mud4 mud5 mud6 gm1 gm2 gm3 dir1 dir2 dir3 dir4 dir5 dir6 dir7 dir8 dir9 dir10 dir11 dir12 dir13 dir14 con1 con2 con3 con4 con5 con6 con7 |
	
	unaDireccion := Direccion
		                crear: 0
		                calle: 'Avenida Argentina'
		                nro: 176
		                piso: '-'
		                dpto: '-'
		                barrio: 'Confluencia'
		                ciudad: 'Neuquen'
		                provincia: 'Neuquen'
		                pais: 'Argentina'.

	empresa := Empresa
		           crear: 'MUDANZAS-NQN'
		           direccion: unaDireccion
		           paginaWeb: 'https://www.mudanzasnqn.com.ar'
		           telefono: '+54 299 447 8899'.


	dir1 := Direccion
		        crear: 1
		        calle: 'Avenida Argentina'
		        nro: 100
		        piso: '-'
		        dpto: '-'
		        barrio: '-'
		        ciudad: 'Neuquen'
		        provincia: 'Neuquen'
		        pais: 'Argentina'.
	dir2 := Direccion
		        crear: 2
		        calle: 'Leandro N. Alem'
		        nro: 200
		        piso: '-'
		        dpto: '-'
		        barrio: '-'
		        ciudad: 'Cipolletti'
		        provincia: 'Rio Negro'
		        pais: 'Argentina'.
	dir3 := Direccion
		        crear: 3
		        calle: 'Belgrano'
		        nro: 300
		        piso: '-'
		        dpto: '-'
		        barrio: '-'
		        ciudad: 'Neuquen'
		        provincia: 'Neuquen'
		        pais: 'Argentina'.
	dir4 := Direccion
		        crear: 4
		        calle: 'Rivadavia'
		        nro: 50
		        piso: '-'
		        dpto: '-'
		        barrio: '-'
		        ciudad: 'Piedra del Aguila'
		        provincia: 'Neuquen'
		        pais: 'Argentina'.
	dir5 := Direccion
		        crear: 5
		        calle: 'Avenida del Trabajador'
		        nro: 500
		        piso: '-'
		        dpto: '-'
		        barrio: '-'
		        ciudad: 'Neuquen'
		        provincia: 'Neuquen'
		        pais: 'Argentina'.
	dir6 := Direccion
		        crear: 6
		        calle: 'Michay'
		        nro: 150
		        piso: '-'
		        dpto: '-'
		        barrio: '-'
		        ciudad: 'Villa La Angostura'
		        provincia: 'Neuquen'
		        pais: 'Argentina'.
	dir7 := Direccion
		        crear: 7
		        calle: 'Jujuy'
		        nro: 60
		        piso: '-'
		        dpto: '-'
		        barrio: '-'
		        ciudad: 'Neuquen'
		        provincia: 'Neuquen'
		        pais: 'Argentina'.
	dir8 := Direccion
		        crear: 8
		        calle: 'Beltran'
		        nro: 1200
		        piso: '-'
		        dpto: '-'
		        barrio: '-'
		        ciudad: 'Mendoza'
		        provincia: 'Mendoza'
		        pais: 'Argentina'.
	dir9 := Direccion
		        crear: 9
		        calle: 'Avenida Olascuaga'
		        nro: 250
		        piso: '-'
		        dpto: '-'
		        barrio: '-'
		        ciudad: 'Neuquen'
		        provincia: 'Neuquen'
		        pais: 'Argentina'.
	dir10 := Direccion
		         crear: 10
		         calle: 'Avenida 44'
		         nro: 640
		         piso: '-'
		         dpto: '-'
		         barrio: '-'
		         ciudad: 'La Plata'
		         provincia: 'Buenos Aires'
		         pais: 'Argentina'.
	dir11 := Direccion
		         crear: 11
		         calle: 'Roca'
		         nro: 196
		         piso: '-'
		         dpto: '-'
		         barrio: '-'
		         ciudad: 'Neuquen'
		         provincia: 'Neuquen'
		         pais: 'Argentina'.
	dir12 := Direccion
		         crear: 12
		         calle: 'R. Adriano'
		         nro: 24
		         piso: '-'
		         dpto: '-'
		         barrio: '-'
		         ciudad: 'Rio de Janeiro'
		         provincia: 'Río de Janeiro'
		         pais: 'Brasil'.
	dir13 := Direccion
		         crear: 13
		         calle: 'Brown'
		         nro: 55
		         piso: '-'
		         dpto: '-'
		         barrio: '-'
		         ciudad: 'Neuquen'
		         provincia: 'Neuquen'
		         pais: 'Argentina'.
	dir14 := Direccion
		         crear: 14
		         calle: 'R. Adriano'
		         nro: 22
		         piso: '-'
		         dpto: '-'
		         barrio: '-'
		         ciudad: 'Montevideo'
		         provincia: 'Calle Colonia'
		         pais: 'Uruguay'.

	empresa
		agregarDireccion: dir1;
		agregarDireccion: dir2;
		agregarDireccion: dir3;
		agregarDireccion: dir4;
		agregarDireccion: dir5;
		agregarDireccion: dir6;
		agregarDireccion: dir7;
		agregarDireccion: dir8;
		agregarDireccion: dir9;
		agregarDireccion: dir10;
		agregarDireccion: dir11;
		agregarDireccion: dir12;
		agregarDireccion: dir13;
		agregarDireccion: dir14.


	cli1 := Cliente
		        crear: 43216851
		        nombre: 'William'
		        apellido: 'Gonzalez'
		        telefono: 299
		        direccion: dir1.
	cli2 := Cliente
		        crear: 44536123
		        nombre: 'Ignacio'
		        apellido: 'Ramirez'
		        telefono: 299
		        direccion: dir3.
	cli3 := Cliente
		        crear: 42345124
		        nombre: 'Facundo'
		        apellido: 'Esparza'
		        telefono: 299
		        direccion: dir5.
	cli4 := Cliente
		        crear: 41736124
		        nombre: 'Santiago'
		        apellido: 'Giudici'
		        telefono: 299
		        direccion: dir7.
	cli5 := Cliente
		        crear: 39772127
		        nombre: 'Mauro'
		        apellido: 'Reyes'
		        telefono: 299
		        direccion: dir9.
	cli6 := Cliente
		        crear: 35617211
		        nombre: 'Laura'
		        apellido: 'Henriquez'
		        telefono: 299
		        direccion: dir11.
	cli7 := Cliente
		        crear: 35816221
		        nombre: 'Romina'
		        apellido: 'Gimenez'
		        telefono: 299
		        direccion: dir13.

	empresa
		agregarCliente: cli1;
		agregarCliente: cli2;
		agregarCliente: cli3;
		agregarCliente: cli4;
		agregarCliente: cli5;
		agregarCliente: cli6;
		agregarCliente: cli7.


	gm1 := ServicioGuardaMuebles
		       crear: 'GM01'
		       nombre: 'GuardaMuebles'
		       descripcion: 'Servicio Basico'
		       valorBase: 10000
		       tamañoDisponible: 100
		       Aislamiento: false
		       Guardallaves: false.
	gm2 := ServicioGuardaMuebles
		       crear: 'GM02'
		       nombre: 'GuardaMuebles'
		       descripcion: 'Servicio Simple'
		       valorBase: 20000
		       tamañoDisponible: 150
		       Aislamiento: false
		       Guardallaves: true.
	gm3 := ServicioGuardaMuebles
		       crear: 'GM03'
		       nombre: 'GuardaMuebles'
		       descripcion: 'Servicio Normal'
		       valorBase: 30000
		       tamañoDisponible: 200
		       Aislamiento: true
		       Guardallaves: true.
	mud1 := MudanzaLocal
		        crear: 'ML05'
		        nombre: 'MudanzaLocal'
		        descripcion: 'Hasta 150km'
		        valorBase: 12000
		        capacidad: 100
		        valorAdEmb: 200
		        valorAdAlt: 250
		        distMax: 150
		        servCargas: true
		        servDescargas: true.
	mud2 := MudanzaLocal
		        crear: 'ML06'
		        nombre: 'MudanzaLocal'
		        descripcion: 'Hasta 250km'
		        valorBase: 30000
		        capacidad: 100
		        valorAdEmb: 250
		        valorAdAlt: 250
		        distMax: 250
		        servCargas: true
		        servDescargas: true.
	mud3 := MudanzaLocal
		        crear: 'ML07'
		        nombre: 'MudanzaLocal'
		        descripcion: 'Hasta 500km'
		        valorBase: 50000
		        capacidad: 100
		        valorAdEmb: 300
		        valorAdAlt: 250
		        distMax: 500
		        servCargas: true
		        servDescargas: true.
	mud4 := MudanzaNacional
		        crear: 'MN10'
		        nombre: 'MudanzaNacional'
		        desc: 'Region Cuyo'
		        valorBase: 60000
		        capacidad: 200
		        valorAdEmb: 300
		        valorAdAlt: 600
		        alInterior: true
		        valorAdiFragil: 300
		        valorAdiDistExtra: 200.
	mud5 := MudanzaNacional
		        crear: 'MN11'
		        nombre: 'MudanzaNacional'
		        desc: 'Region Pampa Humeda'
		        valorBase: 80000
		        capacidad: 200
		        valorAdEmb: 400
		        valorAdAlt: 500
		        alInterior: false
		        valorAdiFragil: 300
		        valorAdiDistExtra: 200.
	mud6 := MudanzaInternacional
		        crear: 'MI15'
		        nombre: 'MudanzaInternacional'
		        descripcion: 'A Brasil'
		        valorBase: 100000
		        capacidad: 250
		        valorAdEmb: 700
		        valorAdAlt: 1000
		        valorAdAduana: 1500
		        valorAdTransporte: 1000
		        valorAdSeguro: 2000.

	empresa
		agregarServicio: gm1;
		agregarServicio: gm2;
		agregarServicio: gm3;
		agregarServicio: mud1;
		agregarServicio: mud2;
		agregarServicio: mud3;
		agregarServicio: mud4;
		agregarServicio: mud5;
		agregarServicio: mud6.


	con1 := ContratoGuardaMuebles
		        crear: 'GDM751'
		        cliente: cli1
		        fechaFirma: '19 February 2025' asDate
		        fechaEfecto: '10 March 2025' asDate
		        servicio: gm1
		        colElementos: { ('sillas ' , 'mesa ') }
		        tiempoDuracion: 365.
	con2 := ContratoGuardaMuebles
		        crear: 'GDM382'
		        cliente: cli2
		        fechaFirma: '20 April 2025' asDate
		        fechaEfecto: '10 June 2025' asDate
		        servicio: gm2
		        colElementos: { ('sillon ' , 'televisor ') }
		        tiempoDuracion: 500.
	con3 := ContratoMudanzaLocal
		        crear: 'MDL920'
		        cliente: cli3
		        fechaFirma: '21 February 2025' asDate
		        fechaEfecto: '15 March 2025' asDate
		        servicio: mud1
		        colElementos: { ('cuadros ' , 'cama ') }
		        dOrigen: dir1
		        dDestino: dir2
		        hora: '12:00:00' asTime.
	con4 := ContratoMudanzaLocal
		        crear: 'MDL098'
		        cliente: cli3
		        fechaFirma: '22 March 2025' asDate
		        fechaEfecto: '15 April 2025' asDate
		        servicio: mud2
		        colElementos: { ('lavaropas ' , 'secaropas ') }
		        dOrigen: dir3
		        dDestino: dir4
		        hora: '09:00:00' asTime.
	con5 := ContratoMudanzaNacional
		        crear: 'MDN861'
		        cliente: cli4
		        fechaFirma: '23 February 2025' asDate
		        fechaEfecto: '06 August 2025' asDate
		        servicio: mud4
		        colElementos: { ('refrigerador ' , 'cocina ') }
		        dOrigen: dir7
		        dDestino: dir8
		        hora: '08:00:00' asTime.
	con6 := ContratoMudanzaNacional
		        crear: 'MDN302'
		        cliente: cli5
		        fechaFirma: '24 March 2025' asDate
		        fechaEfecto: '20 May 2025' asDate
		        servicio: mud5
		        colElementos: { ('ropa ' , 'platos ') }
		        dOrigen: dir9
		        dDestino: dir10
		        hora: '06:00:00' asTime.
	con7 := ContratoMudanzaInternacional
		        crear: 'MDI910'
		        cliente: cli6
		        fechaFirma: '25 March 2025' asDate
		        fechaEfecto: '10 December 2025' asDate
		        servicio: mud6
		        colElementos: { ('cajas ' , 'libros') }
		        dOrigen: dir11
		        dDestino: dir12
		        hora: '04:00:00' asTime.

	empresa
		agregarContrato: con1;
		agregarContrato: con2;
		agregarContrato: con3;
		agregarContrato: con4;
		agregarContrato: con5;
		agregarContrato: con6;
		agregarContrato: con7. 
]

{ #category : #initialization }
EmpresaVisual >> initialize [

	| origen titulo botonCancelarContrato botonRenovarContrato botonReprogramarContrato botonRegistrarContrato botonRegistrarServicio botonRegistrarCliente botonRegistrarDireccion botonDatosEmpresa botonListarDatos ventanaCancelarContrato ventanaRenovarContrato ventanaReprogramarContrato ventanaRegistrarContrato ventanaRegistrarServicio ventanaRegistrarCliente ventanaRegistrarDireccion ventanaDatosEmpresa ventanaListadoContratos botonMinimizar botonCerrar |

	super initialize.
	self color: Color gray.
	self position: 70 @ 70.
	self bounds: (self position extent: 600 @ 1024).	

	self cargarEmpresa. 
 
	origen := self innerBounds origin.

	titulo := StringMorph new.
	titulo
		contents: 'PROGRAMACION ORIENTADA A OBJETOS';
		"fontName: 'Source Sans Pro' size: 24;"
		font: (LogicalFont familyName: 'Source Sans Pro' pointSize: 18);
		emphasis: TextEmphasis bold emphasisCode;
		color: Color black;
		position: self innerBounds origin + (20 @ 20).

	self addMorph: titulo.
	
	botonCancelarContrato := BotonAccion new.
	botonRenovarContrato := BotonAccion new.
	botonReprogramarContrato := BotonAccion new.	
	botonRegistrarContrato := BotonAccion new.
	botonRegistrarServicio := BotonAccion new.
	botonRegistrarCliente := BotonAccion new.
	botonRegistrarDireccion := BotonAccion new.
	botonDatosEmpresa := BotonAccion new.
	botonListarDatos := BotonAccion new.	
	botonMinimizar:= BotonAccion new.
	botonCerrar:= BotonAccion new.

	self addMorph: botonCancelarContrato.
	self addMorph: botonRenovarContrato .
	self addMorph: botonReprogramarContrato .	
	self addMorph: botonRegistrarContrato .
	self addMorph: botonRegistrarServicio .
	self addMorph: botonRegistrarCliente .
	self addMorph: botonRegistrarDireccion .
	self addMorph: botonDatosEmpresa .
	self addMorph: botonListarDatos .			
	self addMorph: botonMinimizar.
	self addMorph: botonCerrar.

	botonCancelarContrato position: origen + (150 @ 100).
	botonRenovarContrato position: origen + (150 @ 200).
	botonReprogramarContrato position: origen + (150 @ 300).	
	botonRegistrarContrato position: origen + (150 @ 400).
	botonRegistrarServicio position: origen + (150 @ 500).
	botonRegistrarCliente position: origen + (150 @ 600).
	botonRegistrarDireccion position: origen + (150 @ 700).
	botonDatosEmpresa position: origen + (150 @ 800).	
	botonListarDatos position: origen + (150 @ 900).
	botonMinimizar position: origen + (450 @ 20).
	botonCerrar position: origen + (500 @ 20).

	botonCancelarContrato label: 'CANCELAR CONTRATO'.
	botonRenovarContrato label: 'RENOVAR CONTRATO'.
	botonReprogramarContrato label: 'REPROGRAMAR CONTRATO' .
	botonRegistrarContrato label: 'REGISTRAR CONTRATO'.
	botonRegistrarServicio label: 'REGISTRAR SERVICIO'.
	botonRegistrarCliente label: 'REGISTRAR CLIENTE'.
	botonRegistrarDireccion label: 'REGISTRAR DIRECCION'.
	botonDatosEmpresa label: 'DATOS EMPRESA'.
	botonListarDatos label: 'LISTAR DATOS' .
	botonMinimizar label: '_'.
	botonCerrar label: 'X'.
	
	botonCancelarContrato extent: 256 @ 72.
	botonRenovarContrato extent: 256 @ 72.
	botonReprogramarContrato extent: 256 @ 72.
	botonRegistrarContrato extent: 256 @ 72.
	botonRegistrarServicio extent: 256 @ 72.
	botonRegistrarCliente extent: 256 @ 72.
	botonRegistrarDireccion extent: 256 @ 72.
	botonDatosEmpresa extent: 256 @ 72.
	botonListarDatos extent: 256 @ 72.
	botonMinimizar extent: 48 @ 36.
	botonCerrar extent: 48 @ 36.

	ventanaCancelarContrato := CancelarContratoVisual new .
	ventanaRenovarContrato := RenovarContratoVisual  new . 
	ventanaReprogramarContrato := ReprogramarContratoVisual  new .
	ventanaRegistrarContrato := RegistrarContratoVisual new .
	ventanaRegistrarServicio := RegistrarServicioVisual new .
	ventanaRegistrarCliente := RegistrarClienteVisual  new .
	ventanaRegistrarDireccion := RegistrarDireccionVisual new .	
	ventanaDatosEmpresa := DatosEmpresaVisual new .
	ventanaListadoContratos := ListadoDatosVisual new .
	
	botonCancelarContrato mouseAction: [
		ventanaCancelarContrato initialize: empresa ]. 
	
	botonRenovarContrato mouseAction: [
		ventanaRenovarContrato initialize: empresa ].
	
	botonReprogramarContrato mouseAction: [
		ventanaReprogramarContrato initialize: empresa ].
	
	botonRegistrarContrato mouseAction: [
		ventanaRegistrarContrato initialize: empresa ].	

	botonRegistrarServicio mouseAction: [
		ventanaRegistrarServicio initialize: empresa ].
	
	botonRegistrarCliente mouseAction: [
		ventanaRegistrarCliente initialize: empresa ].
	
	botonRegistrarDireccion mouseAction: [
		ventanaRegistrarDireccion initialize: empresa ].
	
	botonDatosEmpresa mouseAction: [
		ventanaDatosEmpresa initialize: empresa ].
	
	botonListarDatos mouseAction: [
		ventanaListadoContratos initialize: empresa ].

	botonMinimizar mouseAction: [ self collapse ].

	botonCerrar mouseAction: [
		self delete.
		ventanaCancelarContrato delete .
	   ventanaRenovarContrato delete .
		ventanaReprogramarContrato delete .
		ventanaRegistrarContrato delete .
		ventanaRegistrarServicio delete .
		ventanaRegistrarCliente delete .
		ventanaRegistrarDireccion delete .
		ventanaDatosEmpresa delete .
		ventanaListadoContratos delete
		 ]
]
