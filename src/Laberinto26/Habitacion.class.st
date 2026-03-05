"
Es un contenedor (es elemento mapa) 
"
Class {
	#name : 'Habitacion',
	#superclass : 'Contenedor',
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'as yet unclassified' }
Habitacion >> entrar [
	Transcript show:'Estas en la habitación ';nextPutAll: self num printString;cr.
]

{ #category : 'printing' }
Habitacion >> printOn:aStream [
	aStream nextPutAll:'Hab-' ; nextPutAll: self num asString 

]

{ #category : 'iterator' }
Habitacion >> recorrer:unBloque [

	Transcript show:self printString;cr.
	unBloque value:self.
	self hijos do:[:each | each recorrer:unBloque].
	
	"me falta recorrer las orientaciones"
	self orientaciones do:[:each | each recorrer:unBloque enContenedor:self].
]
