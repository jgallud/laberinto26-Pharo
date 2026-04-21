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
	#package : 'Laberinto26-Solucion'
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

{ #category : 'visitor' }
Sur >> aceptar:unVisitor enContenedor:unaForma [
	unaForma sur aceptar:unVisitor
]

{ #category : 'caminar' }
Sur >> caminar:unBicho [
 | em |
	em:=unBicho posicion forma sur. 
	
	em entrar:unBicho.
]

{ #category : 'accessing' }
Sur >> obtenerElemento:unaForma [
	^unaForma sur
]

{ #category : 'accessing' }
Sur >> ponerElemento:unEM enContenedor:unCont [
	unCont sur:unEM
]

{ #category : 'misc' }
Sur >> recorrer:unBloque enContenedor:unCont [

	unCont sur recorrer:unBloque
]
