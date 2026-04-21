"
Oeste representa la orientación oeste
"
Class {
	#name : 'Oeste',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'accessing' }
Oeste class >> default [
 UnicaInstancia isNil ifTrue:[UnicaInstancia:=super new].
 ^UnicaInstancia
]

{ #category : 'instance creation' }
Oeste class >> new [
	self error:'no se puede crear objeto'.
]

{ #category : 'visitor' }
Oeste >> aceptar:unVisitor enContenedor:unaForma [
	unaForma oeste aceptar:unVisitor
]

{ #category : 'caminar' }
Oeste >> caminar:unBicho [
 | em |
	em:=unBicho posicion forma oeste. 
	
	em entrar:unBicho.
]

{ #category : 'accessing' }
Oeste >> obtenerElemento:unaForma [
	^unaForma oeste
]

{ #category : 'accessing' }
Oeste >> ponerElemento:unEM enContenedor:unCont [
	unCont oeste:unEM
]

{ #category : 'misc' }
Oeste >> recorrer:unBloque enContenedor:unCont [

	unCont oeste recorrer:unBloque
]
