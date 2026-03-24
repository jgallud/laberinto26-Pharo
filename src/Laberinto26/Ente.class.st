"
Ente es la interfaz de los elementos autonomos del laberinto
"
Class {
	#name : 'Ente',
	#superclass : 'Object',
	#instVars : [
		'poder',
		'posicion',
		'vidas',
		'juego'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'ataques' }
Ente >> atacar [

	| enemigo |
	"enemigo := self juego buscarPersonaje: self."
	enemigo:=self buscarEnemigo.
	enemigo ifNotNil: [ enemigo esAtacadoPor: self ]
]

{ #category : 'as yet unclassified' }
Ente >> buscarEnemigo [
	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
Ente >> esAtacadoPor:alguien [

	self vidas:(self vidas - alguien poder).
	Transcript show:self printString ; nextPutAll: ' es atacado por '; nextPutAll: alguien printString ; cr.
	Transcript show:'vidas: ' ; nextPutAll: self vidas printString;cr.
	
	self vidas=0 ifTrue:[ self muero ]
	
]

{ #category : 'as yet unclassified' }
Ente >> estaVivo [
	^self vidas > 0 
]

{ #category : 'initialization' }
Ente >> initialize [
	vidas:=50.
	poder:=1.
]

{ #category : 'accessing' }
Ente >> juego [

	^ juego
]

{ #category : 'accessing' }
Ente >> juego: anObject [

	juego := anObject
]

{ #category : 'as yet unclassified' }
Ente >> muero [
	self subclassResponsibility 
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
