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
	#category : 'Laberinto26',
	#package : 'Laberinto26'
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
	self abierta:true.
]

{ #category : 'accessing' }
Puerta >> cerrar [
	self abierta:false.
]

{ #category : 'as yet unclassified' }
Puerta >> entrar [
 self abierta ifTrue:[Transcript show:'La puerta está abierta';cr. "pasar al otro lado"
	]
 ifFalse:[Transcript show:'La puerta está cerrada';cr.]
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
