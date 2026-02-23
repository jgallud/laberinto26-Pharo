"
Es un tipo de contenedor
"
Class {
	#name : 'Habitacion',
	#superclass : 'Contenedor',
	#instVars : [
		'norte',
		'sur',
		'este',
		'oeste'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

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
