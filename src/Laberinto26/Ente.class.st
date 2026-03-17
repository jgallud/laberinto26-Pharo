"
Ente es la interfaz de los elementos autonomos del laberinto
"
Class {
	#name : 'Ente',
	#superclass : 'Object',
	#instVars : [
		'poder',
		'posicion',
		'vidas'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'consulta' }
Ente >> estaVivo [
	^self vidas > 0 
]

{ #category : 'initialization' }
Ente >> initialize [
	vidas:=50.
	poder:=1.
]

{ #category : 'accessing' }
Ente >> poder [

	^ poder
]

{ #category : 'accessing' }
Ente >> poder: anObject [

	poder := anObject
]

{ #category : 'accessing' }
Ente >> posicion [

	^ posicion
]

{ #category : 'accessing' }
Ente >> posicion: anObject [

	posicion := anObject
]

{ #category : 'accessing' }
Ente >> vidas [

	^ vidas
]

{ #category : 'accessing' }
Ente >> vidas: anObject [

	vidas := anObject
]
