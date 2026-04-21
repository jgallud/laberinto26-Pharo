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
	#package : 'Laberinto26-Solucion'
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

{ #category : 'visitor' }
Norte >> aceptar:unVisitor enContenedor:unaForma [
	unaForma norte aceptar:unVisitor
]

{ #category : 'caminar' }
Norte >> caminar:unBicho [
 | em |
	em:=unBicho posicion forma norte. 
	
	em entrar:unBicho.
]

{ #category : 'accessing' }
Norte >> obtenerElemento:unaForma [
	^unaForma norte
]

{ #category : 'accessing' }
Norte >> ponerElemento:unEM enContenedor:unCont [
	unCont norte:unEM
]

{ #category : 'misc' }
Norte >> recorrer:unBloque enContenedor:unCont [

	unCont norte recorrer:unBloque
]
