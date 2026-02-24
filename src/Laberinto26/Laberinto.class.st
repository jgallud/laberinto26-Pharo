"
Laberinto es un EM que tiene habitaciones
"
Class {
	#name : 'Laberinto',
	#superclass : 'Contenedor',
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'accessing' }
Laberinto >> agregarHabitacion:unaHab [
	self agregarHijo: unaHab
]

{ #category : 'accessing' }
Laberinto >> habitaciones [

	^ habitaciones
]

{ #category : 'accessing' }
Laberinto >> habitaciones: anObject [

	habitaciones := anObject
]

{ #category : 'accessing' }
Laberinto >> initialize [ 
	habitaciones:=OrderedCollection new.
]

{ #category : 'accessing' }
Laberinto >> obtenerHabitacion:unNum [
	"^self hijos at:unNum"
	
	^self hijos detect:[:each | each num = unNum] ifNone:[nil]
]
