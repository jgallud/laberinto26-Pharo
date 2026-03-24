"
Sur representa la orientación sur
"
Class {
	#name : 'Sur',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'accessing' }
Sur class >> default [
 UnicaInstancia isNil ifTrue:[UnicaInstancia:=super new].
 ^UnicaInstancia
]

{ #category : 'instance creation' }
Sur class >> new [
	self error:'no se puede crear objeto'.
]

{ #category : 'caminar' }
Sur >> caminar:unBicho [
 | em |
	em:=unBicho posicion forma sur. 
	
	em entrar:unBicho.
]

{ #category : 'as yet unclassified' }
Sur >> ponerElemento:unEM enContenedor:unCont [
	unCont sur:unEM
]

{ #category : 'as yet unclassified' }
Sur >> recorrer:unBloque enContenedor:unCont [

	unCont sur recorrer:unBloque
]
