"
Bicho representa a los enemigos del personaje
"
Class {
	#name : 'Bicho',
	#superclass : 'Ente',
	#instVars : [
		'modo'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'as yet unclassified' }
Bicho >> actua [
	self modo actua:self
]

{ #category : 'consulta' }
Bicho >> esAgresivo [
 ^self modo esAgresivo
]

{ #category : 'consulta' }
Bicho >> esPerezoso [
 ^self modo esPerezoso
]

{ #category : 'accessing' }
Bicho >> modo [

	^ modo
]

{ #category : 'accessing' }
Bicho >> modo: anObject [

	modo := anObject
]

{ #category : 'printing' }
Bicho >> printOn:aStream [
	aStream nextPutAll:'Bicho-' ; nextPutAll: self modo asString
]
