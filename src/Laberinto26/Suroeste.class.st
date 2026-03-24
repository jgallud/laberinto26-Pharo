Class {
	#name : 'Suroeste',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'accessing' }
Suroeste class >> default [
 UnicaInstancia isNil ifTrue:[UnicaInstancia:=super new].
 ^UnicaInstancia
]

{ #category : 'instance creation' }
Suroeste class >> new [
	self error:'no se puede crear objeto'.
]

{ #category : 'caminar' }
Suroeste >> caminar:unBicho [
 | em |
	em:=unBicho posicion forma so. "que hay en el este"
	
	em entrar:unBicho.
]

{ #category : 'as yet unclassified' }
Suroeste >> ponerElemento:unEM enContenedor:unCont [
	unCont so:unEM
]

{ #category : 'as yet unclassified' }
Suroeste >> recorrer:unBloque enContenedor:unCont [

	unCont so recorrer:unBloque
]
