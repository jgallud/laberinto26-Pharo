"
Personaje es el prota del juego
"
Class {
	#name : 'Personaje',
	#superclass : 'Ente',
	#instVars : [
		'nombre'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'as yet unclassified' }
Personaje >> buscarEnemigo [
	"pedir a juego que me devuelva un bicho en mi posicion"
]

{ #category : 'caminar' }
Personaje >> irA:unaOr [
	unaOr caminar:self.
]

{ #category : 'caminar' }
Personaje >> irAlNorte [
	self posicion irAlNorte:self.
]

{ #category : 'as yet unclassified' }
Personaje >> muero [
	self juego muerePersonaje 
]

{ #category : 'accessing' }
Personaje >> nombre [

	^ nombre
]

{ #category : 'accessing' }
Personaje >> nombre: anObject [

	nombre := anObject
]

{ #category : 'printing' }
Personaje >> printOn:aStream [
	aStream nextPutAll:self nombre
]
