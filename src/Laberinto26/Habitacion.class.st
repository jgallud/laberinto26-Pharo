"
Es un contenedor (es elemento mapa) 
"
Class {
	#name : 'Habitacion',
	#superclass : 'Contenedor',
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'printing' }
Habitacion >> printOn:aStream [
	aStream nextPutAll:'Hab-' ; nextPutAll: self num asString 

]
