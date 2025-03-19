Class {
	#name : #Empresa,
	#superclass : #Object,
	#instVars : [
		'razonSocial',
		'telefono',
		'paginaWeb',
		'direccion',
		'colClientes',
		'colServicios',
		'colContratos',
		'colDirecciones'
	],
	#category : #'POO-TPOFINAL-MODELO'
}

{ #category : #constructores }
Empresa class >> crear: unaRazonSocial direccion: unaDireccion paginaWeb: unaPaginaWeb telefono: unTelefono [

	| nuevaEmpresa |
	nuevaEmpresa := self new.

	nuevaEmpresa
		iniciar: unaRazonSocial
		direccion: unaDireccion
		paginaWeb: unaPaginaWeb
		telefono: unTelefono.

	^ nuevaEmpresa
]

{ #category : #'propias de la clase' }
Empresa >> agregarCliente: unCliente [

	colClientes add: unCliente.
]

{ #category : #'propias de la clase' }
Empresa >> agregarContrato: unContrato [

	colContratos add: unContrato.
]

{ #category : #'propias de la clase' }
Empresa >> agregarDireccion: unaDireccion [

	colDirecciones add: unaDireccion.
]

{ #category : #'propias de la clase' }
Empresa >> agregarServicio: unServicio [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	colServicios add: unServicio.
]

{ #category : #'propias de la clase' }
Empresa >> buscarCliente: unDni [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| unCliente |
	
	unCliente := colClientes detect: [ :cadaCliente | cadaCliente equal: unDni ]
		ifNone: [ nil ].
	
	^  unCliente 
]

{ #category : #'propias de la clase' }
Empresa >> buscarContrato: unNumero [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| unContrato |
	
	unContrato := colContratos detect: [ :each | each equal: unNumero ]
	ifNone: [ nil ].
	
	^ unContrato
]

{ #category : #'propias de la clase' }
Empresa >> buscarContratoCliente: unDni [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| unCliente unContrato |
	
	unContrato := nil.
	
	unCliente := colClientes detect: [ :cadaCliente | cadaCliente equal: unDni ]
		ifNone: [ nil ].
	
	unCliente ifNotNil: [ unContrato := colContratos detect: [ :cadaContrato | cadaContrato verificarCliente: unCliente ] ].
	
	^  unContrato 
]

{ #category : #'propias de la clase' }
Empresa >> buscarDireccion: unCodigo [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| unDireccion |
	
	unDireccion := colDirecciones detect: [ :each | each equal: unCodigo ]
	ifNone: [ nil ].
	
	^ unDireccion 
]

{ #category : #'propias de la clase' }
Empresa >> buscarServicio: unId [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	| unServicio |
	
	unServicio := colServicios detect: [ :cadaServicio | cadaServicio equal: unId ]
	ifNone: [ nil ].
	
	^ unServicio 
]

{ #category : #Cancelar }
Empresa >> cancelarContrato: unNumero [

	| unContrato cancelado |
	
	cancelado := false.
	unContrato := self buscarContrato: unNumero .
	unContrato ifNotNil: [ cancelado := unContrato cancelar ].
	
	^ cancelado 

]

{ #category : #Listado }
Empresa >> generarListadoClientes [

	| listaClientes |

	listaClientes := ( colClientes collect: [ :cadaCliente | cadaCliente printString, String cr ] ) join: '| '.

	^ listaClientes 
]

{ #category : #Listado }
Empresa >> generarListadoContratos [

	| listaContratos |

	listaContratos := ( colContratos collect: [ :cadaContrato | cadaContrato printString, String cr ] ) join: '| '.

	^ listaContratos 
]

{ #category : #Listado }
Empresa >> generarListadoContratosSemanal [
	"Genera y devuelve una lista de contratos que fueron realizados en los últimos 7 días."

	| colContratoSemanal listaContratos |
	
	colContratoSemanal := colContratos select: [ :cadaContrato | cadaContrato perteneceAEstaSemana ].

	listaContratos := ( colContratoSemanal collect: [ :cadaContrato | cadaContrato printString, String cr ] ) join: '| '.

	^ listaContratos
]

{ #category : #Listado }
Empresa >> generarListadoDirecciones [

	| listaDirecciones |

	listaDirecciones := ( colDirecciones collect: [ :cadaDireccion | cadaDireccion printString, String cr ] ) join: '| '.

	^ listaDirecciones 
]

{ #category : #Listado }
Empresa >> generarListadoSerivicios [

	| listaServicios |

	listaServicios := ( colServicios collect: [ :cadaServicio | cadaServicio printString, String cr ] ) join: '| '.

	^ listaServicios 
]

{ #category : #observadores }
Empresa >> getColClientes [

	^ colClientes
]

{ #category : #observadores }
Empresa >> getColContratos [

	^ colContratos
]

{ #category : #observadores }
Empresa >> getColDirecciones [

	^ colDirecciones
]

{ #category : #observadores }
Empresa >> getColServicios [

	^ colServicios
]

{ #category : #observadores }
Empresa >> getDireccion [

	^ direccion
]

{ #category : #observadores }
Empresa >> getPaginaWeb [ 

	^ paginaWeb
]

{ #category : #observadores }
Empresa >> getRazonSocial [

	^ razonSocial
]

{ #category : #observadores }
Empresa >> getTelefono [ 

	^ telefono
]

{ #category : #inicializadores }
Empresa >> iniciar: unaRazonSocial direccion: unaDireccion paginaWeb: unaPaginaWeb telefono: unTelefono [

	razonSocial := unaRazonSocial.
	direccion := unaDireccion.
	paginaWeb := unaPaginaWeb.
	telefono := unTelefono.
	colServicios := OrderedCollection new.
	colContratos := OrderedCollection new.
	colClientes := OrderedCollection new.
	colDirecciones := OrderedCollection new.
]

{ #category : #Registrar }
Empresa >> registrarCliente: unDni nombre: unNombre apellido: unApellido telfono: unTelefono direccion: unaDireccion [ 

	|unCliente|
	unCliente := nil .
	(self buscarCliente: unDni) ifNil: [ 
	unCliente := Cliente crear: unDni nombre: unNombre  apellido: unApellido telefono: unTelefono direccion: unaDireccion .
	
	colClientes add: unCliente ] .
	
	^ unCliente
]

{ #category : #Registrar }
Empresa >> registrarContratoGuardaMuebles: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol tiempoDuracion: unTiempo [  

	|unContrato|
	unContrato := nil .
	(self buscarContrato: unNumero) ifNil: [ 
	unContrato := ContratoGuardaMuebles crear: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol tiempoDuracion: unTiempo .
	
	colContratos add: unContrato ].
	
	^ unContrato
]

{ #category : #Registrar }
Empresa >> registrarContratoMudanzaInternacional: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol dOrigen: unaDOrigen dDestino: unaDDestino hora: unaHora [

	| unContrato |
	unContrato := nil .
	(self buscarContrato: unNumero) ifNil: [
		unContrato := ContratoMudanzaInternacional
			              crear: unNumero
			              cliente: unCliente
			              fechaFirma: unaFechaFirma
			              fechaEfecto: unaFechaEfecto
			              servicio: unServicio
			              colElementos: unaCol
			              dOrigen: unaDOrigen
			              dDestino: unaDDestino
			              hora: unaHora .

	colContratos add: unContrato ] .
	
	^ unContrato
]

{ #category : #Registrar }
Empresa >> registrarContratoMudanzaLocal: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol dOrigen: unaDOrigen dDestino: unaDDestino hora: unaHora [

	| unContrato |
	unContrato := nil .
	(self buscarContrato: unNumero) ifNil: [
		unContrato := ContratoMudanzaLocal
			              crear: unNumero
			              cliente: unCliente
			              fechaFirma: unaFechaFirma
			              fechaEfecto: unaFechaEfecto
			              servicio: unServicio
			              colElementos: unaCol
			              dOrigen: unaDOrigen
			              dDestino: unaDDestino
			              hora: unaHora .

	colContratos add: unContrato ] .
	
	^ unContrato
]

{ #category : #Registrar }
Empresa >> registrarContratoMudanzaNacional: unNumero cliente: unCliente fechaFirma: unaFechaFirma fechaEfecto: unaFechaEfecto servicio: unServicio colElementos: unaCol dOrigen: unaDOrigen dDestino: unaDDestino hora: unaHora [

	| unContrato |
	unContrato := nil .
	(self buscarContrato: unNumero) ifNil: [
		unContrato := ContratoMudanzaNacional
			              crear: unNumero
			              cliente: unCliente
			              fechaFirma: unaFechaFirma
			              fechaEfecto: unaFechaEfecto
			              servicio: unServicio
			              colElementos: unaCol
			              dOrigen: unaDOrigen
			              dDestino: unaDDestino
			              hora: unaHora .

	colContratos add: unContrato ] .
	
	^ unContrato
]

{ #category : #Registrar }
Empresa >> registrarDireccion: codigo calle: unaCalle nro: unNro piso: unPiso dpto: undpto barrio: unBarrio ciudad: unaCiudad provincia: unaProvincia pais: unPais [

	|unaDireccion|
	unaDireccion := nil.
	(self buscarDireccion: codigo) ifNil: [ 
	unaDireccion := Direccion crear: codigo calle: unaCalle nro: unNro piso: unPiso dpto: undpto barrio: unBarrio ciudad: unaCiudad provincia: unaProvincia pais: unPais .
	
	colDirecciones add: unaDireccion ] .


	
	^ unaDireccion
]

{ #category : #Registrar }
Empresa >> registrarServicioGuardaMuebles: unId nombre: unNombre descripcion: unaDesc valorBase: unValorBase tamañoDisponible: unTamaño Aislamiento: tieneAislamiento Guardallaves: conGuardallaves [

	|unServicio|
	unServicio := nil .
	(self buscarServicio: unId) ifNil: [ 
	unServicio := ServicioGuardaMuebles crear: unId nombre: unNombre descripcion: unaDesc valorBase: unValorBase tamañoDisponible: unTamaño Aislamiento: tieneAislamiento Guardallaves: conGuardallaves .
	
	colServicios add: unServicio ].
	
	^ unServicio
]

{ #category : #Registrar }
Empresa >> registrarServicioMudanzaInternacional: unId nombre: unNombre descripcion: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura valorAdAduana: adicionalAduana valorAdTransporte: adicionalTransporte valorAdSeguro: adicionalSeguro [ 
	|unServicio|
	unServicio := nil .
	(self buscarServicio: unId) ifNil: [ 
	unServicio := MudanzaInternacional  crear: unId nombre: unNombre descripcion: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura valorAdAduana: adicionalAduana valorAdTransporte: adicionalTransporte valorAdSeguro: adicionalSeguro  .
	
	colServicios add: unServicio ].
	
	^ unServicio
]

{ #category : #Registrar }
Empresa >> registrarServicioMudanzaLocal: unId nombre: unNombre descripcion: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura distMax: unaDistMax servCargas: ofreceCargas servDescargas: ofreceDescargas [
	|unServicio|
	unServicio := nil .
	(self buscarServicio: unId) ifNil: [ 
	unServicio := MudanzaLocal crear: unId nombre: unNombre descripcion: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura distMax: unaDistMax servCargas: ofreceCargas servDescargas: ofreceDescargas .
	
	colServicios add: unServicio ].
	
	^ unServicio
]

{ #category : #Registrar }
Empresa >> registrarServicioMudanzaNacional: unId nombre: unNombre desc: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura alInterior: esAlInterior valorAdiFragil: adicionalFragil valorAdiDistExtra: adicionalDistExtra [
	|unServicio|
	unServicio := nil .
	(self buscarServicio: unId) ifNil: [ 
	unServicio := MudanzaNacional crear: unId nombre: unNombre desc: unaDescripcion valorBase: unValorBase capacidad: unaCapacidad valorAdEmb: unValorEmbalaje valorAdAlt: unValorAltura alInterior: esAlInterior valorAdiFragil: adicionalFragil valorAdiDistExtra: adicionalDistExtra .
	
	colServicios add: unServicio ].
	
	^ unServicio
]

{ #category : #Renovar }
Empresa >> renovarContrato: unNumero tiempoDuracion: nuevaDuracion listaElementos: unaCol [

	| unContrato renovado |
	
	renovado := false.
	unContrato := self buscarContrato: unNumero .
	unContrato ifNotNil: [ 
		( unContrato getServicio getNombre = 'GuardaMuebles' ) 
			ifTrue: [ renovado := unContrato renovar: nuevaDuracion colElementos: unaCol ] ].

	^ renovado
]

{ #category : #Reprogramar }
Empresa >> reprogramarMudanzaEmpresa: unNumero fecha: unaFecha hora: unaHora [

	| unContrato reprogramado |
	reprogramado := false.
	unContrato := self buscarContrato: unNumero.
	unContrato ifNotNil: [
		(unContrato getServicio getNombre
		 = ('MudanzaLocal' or: 'MudanzaNacional') or: 'MudanzaInternacional')
			ifTrue: [
			reprogramado := unContrato reprogramar: unaFecha hora: unaHora ] ].

	^ reprogramado
]

{ #category : #Reprogramar }
Empresa >> reprogramarMudanzaUrgenteEmpresa: unNumero fecha: unaFecha hora: unaHora [

	| unContrato reprogramado |
	reprogramado := false.
	unContrato := self buscarContrato: unNumero.
	unContrato ifNotNil: [
		(unContrato getServicio getNombre
		 = ('MudanzaLocal' or: 'MudanzaNacional') or: 'MudanzaInternacional')
			ifTrue: [
				reprogramado := unContrato
					                reprogramarUrgente: unaFecha
					                hora: unaHora ] ].

	^ reprogramado
]

{ #category : #modificadores }
Empresa >> setDireccion: unaDireccion [

	direccion := unaDireccion
]

{ #category : #modificadores }
Empresa >> setPaginaWeb: unaPaginaWeb [

	paginaWeb := unaPaginaWeb
]

{ #category : #modificadores }
Empresa >> setTelefono: unTelefono [

	telefono := unTelefono
]

{ #category : #'propias de la clase' }
Empresa >> toString [
	" Retorna los datos de la empresa en forma de cadena."

	^ 'Razon Social: ' , razonSocial asString , Character cr asString
	  ,Character cr asString
	  , 'Direccion: ' , direccion toString
	  , Character cr asString ,Character cr asString
	  , 'Pagina Web: ' , paginaWeb
	  , Character cr asString , Character cr asString
	  ,'Telefono: ' , telefono asString
]
