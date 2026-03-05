"
Este representa la orientación este
"
Class {
	#name : 'Este',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
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

{ #category : 'as yet unclassified' }
Este >> ponerElemento:unEM enContenedor:unCont [
	unCont este:unEM
]

{ #category : 'as yet unclassified' }
Este >> recorrer:unBloque enContenedor:unCont [

	unCont este recorrer:unBloque
]
