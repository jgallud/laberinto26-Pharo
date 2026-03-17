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
	#package : 'Laberinto26',
	#tag : 'Solucion'
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

{ #category : 'caminar' }
Oeste >> caminar:unBicho [
 | em |
	em:=unBicho posicion oeste. 
	
	em entrar:unBicho.
]

{ #category : 'as yet unclassified' }
Oeste >> ponerElemento:unEM enContenedor:unCont [
	unCont oeste:unEM
]

{ #category : 'as yet unclassified' }
Oeste >> recorrer:unBloque enContenedor:unCont [

	unCont oeste recorrer:unBloque
]
