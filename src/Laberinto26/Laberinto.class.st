"
Laberinto es un EM que tiene habitaciones
"
Class {
	#name : 'Laberinto',
	#superclass : 'Contenedor',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'accessing' }
Laberinto >> agregarHabitacion:unaHab [
	self agregarHijo: unaHab
]

{ #category : 'as yet unclassified' }
Laberinto >> entrar:alguien [
	| hab |
	Transcript show:alguien printString ; nextPutAll: ' ha entrado en el laberinto';cr.	
	"elegir una habitacion al azar..."
	"entrar por la hab1"
	hab:=self obtenerHabitacion: 1.
	hab entrar:alguien.

]

{ #category : 'accessing' }
Laberinto >> obtenerHabitacion:unNum [
	"^self hijos at:unNum"
	
	^self hijos detect:[:each | each num = unNum] ifNone:[nil]
]

{ #category : 'as yet unclassified' }
Laberinto >> recorrer:unBloque [

	Transcript show:'Recorriendo el laberinto';cr.
	
	self hijos do:[:each | each recorrer:unBloque]
]
