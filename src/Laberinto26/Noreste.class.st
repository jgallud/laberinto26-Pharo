Class {
	#name : 'Noreste',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'accessing' }
Noreste class >> default [
 UnicaInstancia isNil ifTrue:[UnicaInstancia:=super new].
 ^UnicaInstancia
]

{ #category : 'instance creation' }
Noreste class >> new [
	self error:'no se puede crear objeto'.
]

{ #category : 'caminar' }
Noreste >> caminar:unBicho [
 | em |
	em:=unBicho posicion forma ne. "que hay en el este"
	
	em entrar:unBicho.
]

{ #category : 'as yet unclassified' }
Noreste >> ponerElemento:unEM enContenedor:unCont [
	unCont ne:unEM
]

{ #category : 'as yet unclassified' }
Noreste >> recorrer:unBloque enContenedor:unCont [

	unCont ne recorrer:unBloque
]
