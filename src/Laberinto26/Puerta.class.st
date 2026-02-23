"
Es un elemento del mapa que une dos habitaciones. Puede estar abierta o cerrada.
"
Class {
	#name : 'Puerta',
	#superclass : 'ElementoMapa',
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
