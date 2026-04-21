"
Laberinto es un EM que tiene habitaciones
"
Class {
	#name : 'Laberinto',
	#superclass : 'Contenedor',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'visitor' }
Laberinto >> aceptar:unVisitor [

	self hijos do:[:each | each aceptar:unVisitor ]
]

{ #category : 'accessing' }
Laberinto >> agregarHabitacion:unaHab [
	self agregarHijo: unaHab
]

{ #category : 'accessing' }
Laberinto >> entrar:alguien [
	| hab |
	Transcript show:alguien printString ; nextPutAll: ' ha entrado en el laberinto';cr.	
	"elegir una habitacion al azar..."
	"entrar por la hab1"
	hab:=self obtenerHabitacion: 1.
	hab entrar:alguien.

]

{ #category : 'accessing' }
Laberinto >> numeroHabitaciones [
 ^self hijos size
]

{ #category : 'accessing' }
Laberinto >> obtenerHabitacion:unNum [
	"^self hijos at:unNum"
	
	^self hijos detect:[:each | each num = unNum] ifNone:[nil]
]

{ #category : 'accessing' }
Laberinto >> recorrer:unBloque [

	Transcript show:'Recorriendo el laberinto';cr.
	
	self hijos do:[:each | each recorrer:unBloque]
]
