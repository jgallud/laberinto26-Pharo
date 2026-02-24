"
Juego es la clase principal del juego del laberinto
"
Class {
	#name : 'Juego',
	#superclass : 'Object',
	#instVars : [
		'laberinto',
		'bichos'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'gestion-bichos' }
Juego >> agregarBicho:unBicho [

	self bichos add:unBicho
]

{ #category : 'accessing' }
Juego >> bichos [

	^ bichos
]

{ #category : 'accessing' }
Juego >> bichos: anObject [

	bichos := anObject
]

{ #category : 'gestion-bichos' }
Juego >> eliminarBicho:unBicho [

	self bichos remove:unBicho ifAbsent: [ ^nil ]
]

{ #category : 'factory method' }
Juego >> fabricarHabitacion [
	^ Habitacion new
]

{ #category : 'factory method' }
Juego >> fabricarHabitacion:unNum [
	|hab|
	hab:=Habitacion new num:unNum.
	hab norte:self fabricarPared.
	hab este:self fabricarPared.
	hab oeste:self fabricarPared.
	hab sur:self fabricarPared.
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
	hab1 sur:puerta.
	hab2 norte:puerta.
	self laberinto:self fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
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

{ #category : 'initialization' }
Juego >> initialize [ 
	bichos:=OrderedCollection new.
]

{ #category : 'accessing' }
Juego >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
Juego >> laberinto: anObject [

	laberinto := anObject
]

{ #category : 'accessing' }
Juego >> obtenerHabitacion:unNum [
	^self laberinto obtenerHabitacion:unNum

]
