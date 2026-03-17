"
Es un elemento del mapa que puede explotar si está activa
"
Class {
	#name : 'Bomba',
	#superclass : 'Decorator',
	#instVars : [
		'activa'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'accessing' }
Bomba >> activa [

	^ activa
]

{ #category : 'accessing' }
Bomba >> activa: anObject [

	activa := anObject
]

{ #category : 'accessing' }
Bomba >> activar [
	Transcript show:'Bomba activada';cr.
	self activa:true.
]

{ #category : 'accessing' }
Bomba >> desactivar [
	Transcript show:'Bomba desactivada';cr.
	self activa:false.
]

{ #category : 'as yet unclassified' }
Bomba >> entrar:alguien [
	self activa ifTrue:[ 
		Transcript show:alguien printString ; nextPutAll: ', te ha explotado una bomba';cr.
		"ToDo quitar vidas a alguien"
		]
]

{ #category : 'consulta' }
Bomba >> esBomba [
 ^true
]

{ #category : 'initialization' }
Bomba >> initialize [
	activa:=false.
]
