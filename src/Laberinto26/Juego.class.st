"
Es la clase principal del juego del laberinto
"
Class {
	#name : 'Juego',
	#superclass : 'Object',
	#instVars : [
		'laberinto'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'factory method' }
Juego >> fabricarHabitacion [
	^ Habitacion new
]

{ #category : 'factory method' }
Juego >> fabricarLab2Hab [
	|hab1 hab2 puerta|
	hab1:=Habitacion new.
	hab2:=Habitacion new.
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
	hab1:=Habitacion new.
	hab2:=Habitacion new.
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
	hab1:=self fabricarHabitacion.
	hab2:=self fabricarHabitacion.
	puerta:=self fabricarPuertaLado1:hab1 lado2:hab2.
	"puerta lado1:hab1.
	puerta lado2:hab2."
	hab1 sur:puerta.
	hab2 norte:puerta.
	hab1 este:self fabricarPared.
	hab1 oeste:self fabricarPared.
	hab1 norte:self fabricarPared.
	hab2 este:self fabricarPared.
	hab2 oeste:self fabricarPared.
	hab2 sur:self fabricarPared.
	self laberinto:self fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
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

{ #category : 'accessing' }
Juego >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
Juego >> laberinto: anObject [

	laberinto := anObject
]
