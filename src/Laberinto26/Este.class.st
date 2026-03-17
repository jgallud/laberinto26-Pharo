"
Este representa la orientación este
"
Class {
	#name : 'Este',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'instance creation' }
Este class >> default [
 UnicaInstancia isNil ifTrue:[UnicaInstancia:=super new].
 ^UnicaInstancia
]

{ #category : 'instance creation' }
Este class >> new [
	self error:'no se puede crear objeto'.
]

{ #category : 'caminar' }
Este >> caminar:unBicho [
 | em |
	em:=unBicho posicion este. "que hay en el este"
	
	em entrar:unBicho.
]

{ #category : 'as yet unclassified' }
Este >> ponerElemento:unEM enContenedor:unCont [
	unCont este:unEM
]

{ #category : 'as yet unclassified' }
Este >> recorrer:unBloque enContenedor:unCont [

	unCont este recorrer:unBloque
]
