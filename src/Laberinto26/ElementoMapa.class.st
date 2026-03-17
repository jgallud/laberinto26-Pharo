"
ElementoMapa es la interfaz común de los elementos del laberinto
"
Class {
	#name : 'ElementoMapa',
	#superclass : 'Object',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'acciones' }
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
