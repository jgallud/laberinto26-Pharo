"
Es un contenedor (es elemento mapa) 
"
Class {
	#name : 'Habitacion',
	#superclass : 'Contenedor',
	#instVars : [
		'num',
		'norte',
		'sur',
		'este',
		'oeste'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'as yet unclassified' }
Habitacion >> entrar [
	Transcript show:'Estas en la habitación ';nextPutAll: self num printString;cr.
]

{ #category : 'accessing' }
Habitacion >> este [

	^ este
]

{ #category : 'accessing' }
Habitacion >> este: anObject [

	este := anObject
]

{ #category : 'accessing' }
Habitacion >> norte [

	^ norte
]

{ #category : 'accessing' }
Habitacion >> norte: anObject [

	norte := anObject
]

{ #category : 'accessing' }
Habitacion >> num [

	^ num
]

{ #category : 'accessing' }
Habitacion >> num: anObject [

	num := anObject
]

{ #category : 'accessing' }
Habitacion >> oeste [

	^ oeste
]

{ #category : 'accessing' }
Habitacion >> oeste: anObject [

	oeste := anObject
]

{ #category : 'accessing' }
Habitacion >> sur [

	^ sur
]

{ #category : 'accessing' }
Habitacion >> sur: anObject [

	sur := anObject
]
