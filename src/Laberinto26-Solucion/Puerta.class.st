"
Puerta es un elemento del mapa que une dos habitaciones y tiene abierta 
"
Class {
	#name : 'Puerta',
	#superclass : 'Hoja',
	#instVars : [
		'lado1',
		'lado2',
		'estado'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'accessing' }
Puerta >> abrir [
	"Transcript show:'Abrimos ';nextPutAll: self printString;cr.
	self abierta:true."
	self estado abrir:self
]

{ #category : 'visitor' }
Puerta >> aceptar:unVisitor [
	unVisitor visitarPuerta:self
]

{ #category : 'accessing' }
Puerta >> cerrar [
	"Transcript show:'Cerramos ';nextPutAll: self printString;cr.
	self abierta:false."
	self estado cerrar:self
]

{ #category : 'misc' }
Puerta >> entrar:alguien [
"	self abierta ifTrue:[ 
		alguien posicion = self lado1 ifTrue:[ self lado2 entrar:alguien ] ifFalse:[ self lado1 entrar:alguien]
		] ifFalse:[ 
			Transcript show:'La puerta está cerrada';cr.
		]"
	self estado entrar:alguien puerta:self
]

{ #category : 'consulta' }
Puerta >> esPuerta [
	^true
]

{ #category : 'consulta' }
Puerta >> estaAbierta [
	^self estado estaAbierta
]

{ #category : 'consulta' }
Puerta >> estaCerrada [
	^self estado estaCerrada
]

{ #category : 'accessing' }
Puerta >> estado [

	^ estado
]

{ #category : 'accessing' }
Puerta >> estado: anObject [

	estado := anObject
]

{ #category : 'initialization' }
Puerta >> initialize [ 
	super initialize.
	estado:=Cerrada new.
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

{ #category : 'misc' }
Puerta >> puedeEntrar:alguien [
	"self abierta ifTrue:[" 
		alguien posicion = self lado1 ifTrue:[ self lado2 entrar:alguien ] ifFalse:[ self lado1 entrar:alguien]
		"] ifFalse:[ 
			Transcript show:'La puerta está cerrada';cr.
		]"
]
