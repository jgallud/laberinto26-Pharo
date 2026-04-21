"
Tunel es una hoja que puede tener un laberinto (Proxy virtual)
"
Class {
	#name : 'Tunel',
	#superclass : 'Hoja',
	#instVars : [
		'laberinto'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'visitor' }
Tunel >> aceptar:unVisitor [
	unVisitor visitarTunel:self
]

{ #category : 'misc' }
Tunel >> entrar:alguien [

 self laberinto ifNil:[ self laberinto:alguien juego clonar].

 "self laberinto ifNil:[ alguien clonarLaberintoEn:self]."
 
self laberinto entrar:alguien.
]

{ #category : 'consulta' }
Tunel >> esTunel [
 ^true
]

{ #category : 'accessing' }
Tunel >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
Tunel >> laberinto: anObject [

	laberinto := anObject
]
