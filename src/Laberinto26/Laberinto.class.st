"
Laberinto es un Contenedor que tiene habitaciones
"
Class {
	#name : 'Laberinto',
	#superclass : 'Contenedor',
	#instVars : [
		'habitaciones'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'accessing' }
Laberinto >> agregarHabitacion:unaHab [
	self habitaciones add:unaHab
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
