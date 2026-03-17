"
Es un contenedor (es elemento mapa) 
"
Class {
	#name : 'Habitacion',
	#superclass : 'Contenedor',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'printing' }
Habitacion >> printOn:aStream [
	aStream nextPutAll:'Hab-' ; nextPutAll: self num asString 

]
