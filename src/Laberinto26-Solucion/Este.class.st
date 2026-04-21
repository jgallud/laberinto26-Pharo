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
	#package : 'Laberinto26-Solucion'
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

{ #category : 'visitor' }
Este >> aceptar:unVisitor enContenedor:unaForma [
	unaForma este aceptar:unVisitor
]

{ #category : 'caminar' }
Este >> caminar:unBicho [
 | em |
	em:=unBicho posicion forma este. "que hay en el este"
	
	em entrar:unBicho.
]

{ #category : 'accessing' }
Este >> obtenerElemento:unaForma [
	^unaForma este
]

{ #category : 'accessing' }
Este >> ponerElemento:unEM enContenedor:unCont [
	unCont este:unEM
]

{ #category : 'misc' }
Este >> recorrer:unBloque enContenedor:unCont [

	unCont este recorrer:unBloque
]
