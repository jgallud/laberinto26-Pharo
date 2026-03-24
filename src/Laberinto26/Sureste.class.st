Class {
	#name : 'Sureste',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'accessing' }
Sureste class >> default [
 UnicaInstancia isNil ifTrue:[UnicaInstancia:=super new].
 ^UnicaInstancia
]

{ #category : 'instance creation' }
Sureste class >> new [
	self error:'no se puede crear objeto'.
]

{ #category : 'caminar' }
Sureste >> caminar:unBicho [
 | em |
	em:=unBicho posicion forma se. "que hay en el este"
	
	em entrar:unBicho.
]

{ #category : 'as yet unclassified' }
Sureste >> ponerElemento:unEM enContenedor:unCont [
	unCont se:unEM
]

{ #category : 'as yet unclassified' }
Sureste >> recorrer:unBloque enContenedor:unCont [

	unCont se recorrer:unBloque
]
