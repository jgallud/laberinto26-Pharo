"
Juego es la clase principal del juego del laberinto
"
Class {
	#name : 'Juego',
	#superclass : 'Object',
	#instVars : [
		'laberinto',
		'bichos',
		'person',
		'hilos'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'acciones' }
Juego >> abrirPuertas [
	self laberinto recorrer:[:each | each esPuerta ifTrue:[each abrir]].
]

{ #category : 'acciones' }
Juego >> activarBombas [
 self laberinto recorrer:[:each | each esBomba ifTrue:[each activar]].
]

{ #category : 'gestion-bichos' }
Juego >> agregarBicho:unBicho [

	self bichos add:unBicho
]

{ #category : 'acciones' }
Juego >> agregarPersonaje:unaCadena [
	|hab1|
	self person:(Personaje new nombre:unaCadena).
	self person juego:self.
	hab1:=self obtenerHabitacion: 1.
	hab1 entrar:self person.
]

{ #category : 'factory method' }
Juego >> asignarOrientaciones:unCont [

	unCont orientaciones add:(self fabricarNorte); add:(self fabricarEste); add:(self fabricarSur); add:(self fabricarOeste)
]

{ #category : 'accessing' }
Juego >> bichos [

	^ bichos
]

{ #category : 'accessing' }
Juego >> bichos: anObject [

	bichos := anObject
]

{ #category : 'ataques' }
Juego >> buscarPersonaje:unBicho [
	
	(unBicho posicion = self person posicion) ifTrue:[^self person] ifFalse:[^nil]
]

{ #category : 'acciones' }
Juego >> cerrarPuertas [
	self laberinto recorrer:[:each | each esPuerta ifTrue:[each cerrar]].
]

{ #category : 'acciones' }
Juego >> desactivarBombas [
 self laberinto recorrer:[:each | each esBomba ifTrue:[each desactivar]].
]

{ #category : 'gestion-bichos' }
Juego >> eliminarBicho:unBicho [

	self bichos remove:unBicho ifAbsent: [ ^nil ]
]

{ #category : 'factory method' }
Juego >> fabricarEste [
	^Este default
]

{ #category : 'factory method' }
Juego >> fabricarHabitacion [
	^ Habitacion new
]

{ #category : 'factory method' }
Juego >> fabricarHabitacion:unNum [
	|hab|
	hab:=Habitacion new num:unNum.
	self asignarOrientaciones:hab. "hab asignarOrientaciones"
	hab orientaciones do:[:each | hab ponerEn:each elemento:self fabricarPared].
	^hab
]

{ #category : 'factory method' }
Juego >> fabricarLab2Hab [
	|hab1 hab2 puerta|
	hab1:=Habitacion new num:1.
	hab2:=Habitacion new num:2.
	puerta:=Puerta new.
	puerta lado1:hab1.
	puerta lado2:hab2.
	hab1 sur:puerta.
	hab2 norte:puerta.
	hab1 este:Pared new.
	hab1 oeste:Pared new.
	hab1 norte:Pared new.
	hab2 este:Pared new.
	hab2 oeste:Pared new.
	hab2 sur:Pared new.
	self laberinto:Laberinto new.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
]

{ #category : 'factory method' }
Juego >> fabricarLab2HabBomba [
	|hab1 hab2 puerta|
	hab1:=Habitacion new num:1.
	hab2:=Habitacion new num:2.
	puerta:=Puerta new.
	puerta lado1:hab1.
	puerta lado2:hab2.
	hab1 sur:puerta.
	hab2 norte:puerta.
	hab1 este:ParedBomba new.
	hab1 oeste:ParedBomba new.
	hab1 norte:ParedBomba new.
	hab2 este:ParedBomba new.
	hab2 oeste:ParedBomba new.
	hab2 sur:ParedBomba new.
	self laberinto:Laberinto new.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
]

{ #category : 'factory method' }
Juego >> fabricarLab2HabFM [
	|hab1 hab2 puerta|
	hab1:=self fabricarHabitacion:1.
	hab2:=self fabricarHabitacion:2.
	puerta:=self fabricarPuertaLado1:hab1 lado2:hab2.
	hab1 ponerEn:(self fabricarSur) elemento:puerta.
	hab2 ponerEn:(self fabricarNorte) elemento:puerta.
	self laberinto:self fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
]

{ #category : 'factory method' }
Juego >> fabricarLab4Hab2BmFM [
	|hab1 hab2 hab3 hab4 p12 p13 p24 p34 bm1 bm2|
	hab1:=self fabricarHabitacion:1.
	hab2:=self fabricarHabitacion:2.
	hab3:=self fabricarHabitacion:3.
	hab4:=self fabricarHabitacion:4.
	
	p12:=self fabricarPuertaLado1:hab1 lado2:hab2.
	p13:=self fabricarPuertaLado1:hab1 lado2:hab3.
	p24:=self fabricarPuertaLado1:hab2 lado2:hab4.
	p34:=self fabricarPuertaLado1:hab3 lado2:hab4.
	
	hab1 sur:p12.
	hab2 norte:p12.
	hab1 este:p13.
	hab3 oeste:p13.
	hab2 este:p24.
	hab4 oeste:p24.
	hab3 sur:p34.
	hab4 norte:p34.
	
	bm1:=Bomba new.
	hab1 agregarHijo:bm1.
	bm2:=Bomba new.
	hab3 agregarHijo:bm2.

	self laberinto:self fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	self laberinto agregarHabitacion: hab3.
	self laberinto agregarHabitacion: hab4.
	
]

{ #category : 'factory method' }
Juego >> fabricarLab4HabFM [
	|hab1 hab2 hab3 hab4 p12 p13 p24 p34|
	hab1:=self fabricarHabitacion:1.
	hab2:=self fabricarHabitacion:2.
	hab3:=self fabricarHabitacion:3.
	hab4:=self fabricarHabitacion:4.
	
	p12:=self fabricarPuertaLado1:hab1 lado2:hab2.
	p13:=self fabricarPuertaLado1:hab1 lado2:hab3.
	p24:=self fabricarPuertaLado1:hab2 lado2:hab4.
	p34:=self fabricarPuertaLado1:hab3 lado2:hab4.
	
	hab1 sur:p12.
	hab2 norte:p12.
	hab1 este:p13.
	hab3 oeste:p13.
	hab2 este:p24.
	hab4 oeste:p24.
	hab3 sur:p34.
	hab4 norte:p34.
	
	self laberinto:self fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	self laberinto agregarHabitacion: hab3.
	self laberinto agregarHabitacion: hab4.
	
]

{ #category : 'factory method' }
Juego >> fabricarLaberinto [
	^ Laberinto new
]

{ #category : 'factory method' }
Juego >> fabricarNorte [
	^Norte default
]

{ #category : 'factory method' }
Juego >> fabricarOeste [
	^Oeste default
]

{ #category : 'factory method' }
Juego >> fabricarPared [
	^ Pared new
]

{ #category : 'factory method' }
Juego >> fabricarPuerta [
	^ Puerta new
]

{ #category : 'factory method' }
Juego >> fabricarPuertaLado1:unaHab lado2:otraHab [
	|puerta|
	puerta:=Puerta new.
	puerta lado1:unaHab.
	puerta lado2:otraHab.
	^puerta
]

{ #category : 'factory method' }
Juego >> fabricarSur [
	^Sur default
]

{ #category : 'accessing' }
Juego >> hilos [

	^ hilos
]

{ #category : 'accessing' }
Juego >> hilos: anObject [

	hilos := anObject
]

{ #category : 'initialization' }
Juego >> initialize [ 
	bichos:=OrderedCollection new.
	hilos:=Dictionary new.
]

{ #category : 'accessing' }
Juego >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
Juego >> laberinto: anObject [

	laberinto := anObject
]

{ #category : 'gestion-bichos' }
Juego >> lanzarBicho:unBicho [
	| proceso |
	Transcript show:unBicho printString ; nextPutAll: ' se activa';cr.
	proceso:=[ [unBicho estaVivo] whileTrue:[unBicho actua]] fork.
 	self hilos at:unBicho put:proceso.

]

{ #category : 'gestion-bichos' }
Juego >> lanzarTodosLosBichos [
	Transcript show:'Los bichos despiertan';cr.
	self bichos do:[:each | self lanzarBicho:each]
]

{ #category : 'ataques' }
Juego >> muereBicho:unBicho [
	self terminarBicho: unBicho
]

{ #category : 'ataques' }
Juego >> muerePersonaje [
	Transcript show:'Manmatao. Fin del juego' ;cr.
	self terminarTodosLosBichos.
]

{ #category : 'accessing' }
Juego >> obtenerHabitacion:unNum [
	^self laberinto obtenerHabitacion:unNum

]

{ #category : 'accessing' }
Juego >> person [

	^ person
]

{ #category : 'accessing' }
Juego >> person: anObject [

	person := anObject
]

{ #category : 'gestion-bichos' }
Juego >> terminarBicho:unBicho [
	unBicho vidas:0.
	
	Transcript show:unBicho printString ; nextPutAll: ' muere';cr.
]

{ #category : 'gestion-bichos' }
Juego >> terminarTodosLosBichos [
	Transcript show:'Los bichos terminan';cr.
	self bichos do:[:each | self terminarBicho:each]
]
