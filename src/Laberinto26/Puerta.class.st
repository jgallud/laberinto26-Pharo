"
Puerta es un elemento del mapa que une dos habitaciones y tiene abierta 
"
Class {
	#name : 'Puerta',
	#superclass : 'Hoja',
	#instVars : [
		'abierta',
		'lado1',
		'lado2'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'accessing' }
Puerta >> abierta [

	^ abierta
]

{ #category : 'accessing' }
Puerta >> abierta: anObject [

	abierta := anObject
]

{ #category : 'accessing' }
Puerta >> abrir [
	Transcript show:'Abrimos ';nextPutAll: self printString;cr.
	self abierta:true.
]

{ #category : 'accessing' }
Puerta >> cerrar [
	Transcript show:'Cerramos ';nextPutAll: self printString;cr.
	self abierta:false.
]

{ #category : 'as yet unclassified' }
Puerta >> entrar:alguien [
	self abierta ifTrue:[ 
		alguien posicion = self lado1 ifTrue:[ self lado2 entrar:alguien ] ifFalse:[ self lado1 entrar:alguien]
		] ifFalse:[ 
			Transcript show:'La puerta está cerrada';cr.
		]
]

{ #category : 'consulta' }
Puerta >> esPuerta [
	^true
]

{ #category : 'initialization' }
Puerta >> initialize [ 
	abierta:=false.
]

{ #category : 'accessing' }
Puerta >> lado1 [

	^ lado1
]

{ #category : 'accessing' }
Puerta >> lado1: anObject [

	lado1 := anObject
]

{ #category : 'accessing' }
Puerta >> lado2 [

	^ lado2
]

{ #category : 'accessing' }
Puerta >> lado2: anObject [

	lado2 := anObject
]

{ #category : 'accessing' }
Puerta >> printOn:aStream [

	aStream nextPutAll:'Puerta-' ; nextPutAll: self lado1 num asString ; nextPutAll:'-' ; nextPutAll: self lado2 num asString
]
