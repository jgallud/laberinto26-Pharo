"
ElementoMapa es la interfaz común de los elementos del laberinto
"
Class {
	#name : 'ElementoMapa',
	#superclass : 'Object',
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'as yet unclassified' }
ElementoMapa >> entrar [
	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
ElementoMapa >> entrar:alguien [
	self subclassResponsibility 
]

{ #category : 'consulta' }
ElementoMapa >> esBomba [
	^false
]

{ #category : 'consulta' }
ElementoMapa >> esPuerta [
	^false
]

{ #category : 'iterator' }
ElementoMapa >> recorrer:unBloque [
	self subclassResponsibility 
]
