"
ElementoMapa es la interfaz común de los elementos del laberinto
"
Class {
	#name : 'ElementoMapa',
	#superclass : 'Object',
	#instVars : [
		'comandos'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'visitor' }
ElementoMapa >> aceptar:unVisitor [
	self subclassResponsibility 
]

{ #category : 'comandos' }
ElementoMapa >> agregarComando:unComando [
	self comandos add:unComando
]

{ #category : 'accessing' }
ElementoMapa >> comandos [

	^ comandos
]

{ #category : 'accessing' }
ElementoMapa >> comandos: anObject [

	comandos := anObject
]

{ #category : 'comandos' }
ElementoMapa >> eliminarComando:unComando [
	self comandos remove:unComando ifAbsent:[nil]
]

{ #category : 'accessing' }
ElementoMapa >> entrar:alguien [
	self subclassResponsibility 
]

{ #category : 'consulta' }
ElementoMapa >> esArmario [
 ^false
]

{ #category : 'consulta' }
ElementoMapa >> esBomba [
	^false
]

{ #category : 'consulta' }
ElementoMapa >> esPuerta [
	^false
]

{ #category : 'consulta' }
ElementoMapa >> esTunel [
 ^false
]

{ #category : 'initialization' }
ElementoMapa >> initialize [ 
	comandos:=OrderedCollection new.
]

{ #category : 'iterator' }
ElementoMapa >> recorrer:unBloque [
	self subclassResponsibility 
]
