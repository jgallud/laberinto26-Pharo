"
Norte representa la orientación norte
"
Class {
	#name : 'Norte',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'accessing' }
Norte class >> default [
 UnicaInstancia isNil ifTrue:[UnicaInstancia:=super new].
 ^UnicaInstancia
]

{ #category : 'instance creation' }
Norte class >> new [
	self error:'no se puede crear objeto'.
]

{ #category : 'caminar' }
Norte >> caminar:unBicho [
 | em |
	em:=unBicho posicion norte. 
	
	em entrar:unBicho.
]

{ #category : 'as yet unclassified' }
Norte >> ponerElemento:unEM enContenedor:unCont [
	unCont norte:unEM
]

{ #category : 'as yet unclassified' }
Norte >> recorrer:unBloque enContenedor:unCont [

	unCont norte recorrer:unBloque
]
