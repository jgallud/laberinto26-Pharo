Class {
	#name : 'LaberintoBuilderTest',
	#superclass : 'TestCase',
	#instVars : [
		'juego',
		'director',
		'dict'
	],
	#category : 'Laberinto26-Pruebas',
	#package : 'Laberinto26-Pruebas'
}

{ #category : 'tests' }
LaberintoBuilderTest >> comprobarArmario:num en:unCont [
	| arm |
	
	arm:=unCont hijos detect:[:each | each esArmario ] ifNone:[nil].
	
	self assert:arm esArmario.
	
	^arm
]

{ #category : 'tests' }
LaberintoBuilderTest >> comprobarBombaEn:unContenedor [	
	|bmb|
	bmb:=unContenedor hijos detect:[:each | each esBomba ] ifNone:[nil].
	self assert:bmb esBomba.
	self comprobarFuncionamientoBomba:bmb
]

{ #category : 'misc' }
LaberintoBuilderTest >> comprobarFuncionamientoBomba:unaBomba [
]

{ #category : 'tests' }
LaberintoBuilderTest >> comprobarFuncionamientoTunel: unTunel [

	self assert: unTunel esTunel.
	self assert: unTunel laberinto isNil.
	self assert: self juego person notNil.
	unTunel entrar: self juego person.
	self assert: unTunel laberinto notNil.
	self
		assert: self juego numeroHabitaciones
		equals: unTunel laberinto numeroHabitaciones
]

{ #category : 'tests' }
LaberintoBuilderTest >> comprobarHabitacion:num [
	| hab |
	hab:=self juego obtenerHabitacion:num.
	self assert:hab num equals:num.
	^hab
]

{ #category : 'tests' }
LaberintoBuilderTest >> comprobarLaberintoRecursivo: unDic en: padre [

	| contenedor nada lista |
	nada := true.

	"contenedores"
	(unDic at: 'tipo') = 'habitacion' ifTrue: [
		nada := false.
		contenedor := self comprobarHabitacion: (unDic at: 'num') ].
	(unDic at: 'tipo') = 'armario' ifTrue: [
		nada := false.
		contenedor := self comprobarArmario: (unDic at: 'num') en: padre ].

	"hojas"
	(unDic at: 'tipo') = 'bomba' ifTrue: [
		nada := false.
		self comprobarBombaEn: padre ].
	(unDic at: 'tipo') = 'tunel' ifTrue: [
		nada := false.
		self comprobarTunelEn: padre ].

	lista := unDic at: 'hijos' ifAbsent: [ nil ].
	lista ifNotNil: [
		lista do: [ :each | self comprobarLaberintoRecursivo: each en: contenedor ] ].

	nada ifTrue: [ self assert: false ]
]

{ #category : 'misc' }
LaberintoBuilderTest >> comprobarPuertaDe:unNum orientacion:unaOr a:otroNum orientacion:otraOr [	
	| unaHab otraHab pt1 pt2 or1 or2|
	
	unaHab:=self juego obtenerHabitacion: unNum.
	otraHab:=self juego obtenerHabitacion: otroNum.
	
	self assert:unaHab num equals:unNum.
	self assert:otraHab num equals:otroNum.
	
	or1:=self director builder perform:('fabricar',unaOr) asSymbol. 
	or2:=self director builder perform:('fabricar',otraOr) asSymbol.
	
	pt1:=unaHab obtenerElemento:or1.
	pt2:=otraHab obtenerElemento:or2.
		
	self assert:(pt1 esPuerta).
	self assert:(pt2 esPuerta).
	self assert:pt1 equals:pt2.
	
	self assert:(pt1 estaAbierta not).
]

{ #category : 'tests' }
LaberintoBuilderTest >> comprobarTunelEn:unContenedor [	
	|tunel|
	tunel:=unContenedor hijos detect:[:each | each esTunel ] ifNone:[nil].
	self assert:tunel esTunel.
	self assert:tunel laberinto isNil.
	self comprobarFuncionamientoTunel:tunel.
]

{ #category : 'accessing' }
LaberintoBuilderTest >> dict [

	^ dict
]

{ #category : 'accessing' }
LaberintoBuilderTest >> dict: anObject [

	dict := anObject
]

{ #category : 'accessing' }
LaberintoBuilderTest >> director [

	^ director
]

{ #category : 'accessing' }
LaberintoBuilderTest >> director: anObject [

	director := anObject
]

{ #category : 'accessing' }
LaberintoBuilderTest >> juego [

	^ juego
]

{ #category : 'accessing' }
LaberintoBuilderTest >> juego: anObject [

	juego := anObject
]

{ #category : 'running' }
LaberintoBuilderTest >> setUp [
	| ruta |
	super setUp.

	self director:Director new.
	ruta:='C:\Users\Jose.Gallud\CloudStation\asignaturas\diseño de sofware\curso25-26\laberintos\'.
	ruta:='C:\Users\jgallud\CloudStation\asignaturas\diseño de sofware\curso25-26\laberintos\'.
	self director procesar: ruta,'lab4Hab4bm2bichosTunel.json'.
	self dict:self director dict.
	self juego:director obtenerJuego.
	self juego agregarPersonaje:'Pepe'.
]

{ #category : 'tests' }
LaberintoBuilderTest >> testGanaPersonaje [

	self juego terminarTodosLosBichos.
	"comprobar la fase juego = final"
	self assert:self juego todosMuertos.
]

{ #category : 'tests' }
LaberintoBuilderTest >> testGananBichos [

	"ToDo"
]

{ #category : 'tests' }
LaberintoBuilderTest >> testIniciales [
	self assert:self juego notNil.
	self assert:self juego laberinto notNil.
	self assert:self juego person notNil.
]

{ #category : 'tests' }
LaberintoBuilderTest >> testLaberinto [
	
	(self dict at:'laberinto') do:[:each | self comprobarLaberintoRecursivo:each en:'root' ].
	
	(self dict at:'puertas' ifAbsent:[^nil]) do:[:cada | 
		self comprobarPuertaDe:(cada at:1) orientacion:(cada at:2) a:(cada at:3) orientacion:(cada at:4)].
]

{ #category : 'tests' }
LaberintoBuilderTest >> testPuertas [

	| puertas posicion unaPuerta|
	puertas := Set new.
	self juego laberinto recorrer: [ :each |
		each esPuerta ifTrue: [ puertas add: each ] ].
	self assert: (puertas anySatisfy: [ :each | each estaAbierta ]) not.
	self juego abrirPuertas.
	self assert: (puertas anySatisfy: [ :each | each estaCerrada ]) not.
	self juego cerrarPuertas.
	self assert: (puertas anySatisfy: [ :each | each estaAbierta ]) not.		
	
	"unaPuerta:= posicion recorrer:[:each | each esPuerta ifTrue:[^each]]."
	unaPuerta:=puertas anyOne.
	
	self juego person posicion:unaPuerta lado1.
   posicion:=self juego person posicion.	
	unaPuerta entrar:self juego person.
	self assert:(posicion=self juego person posicion).	
	
	self juego abrirPuertas.
	unaPuerta entrar:self juego person.
	self assert:(posicion =self juego person posicion) not.
	self assert:self juego person posicion equals:unaPuerta lado2.
	

]

{ #category : 'tests' }
LaberintoBuilderTest >> testPuertasAbiertasVisitor [

	| puertas vAP vCP|
	puertas := Set new.

	self juego laberinto recorrer: [ :each |
		each esPuerta ifTrue: [ puertas add: each ] ].

	self assert: (puertas anySatisfy: [ :each | each estaAbierta ]) not.	
	vAP:=VisitorAbrirPuertas new.
	self juego laberinto aceptar:vAP.
	self assert: (puertas anySatisfy: [ :each | each estaCerrada ]) not.
	vCP:=VisitorCerrarPuertas new.
	self juego laberinto aceptar:vCP.
	self assert: (puertas anySatisfy: [ :each | each estaAbierta ]) not.
]
