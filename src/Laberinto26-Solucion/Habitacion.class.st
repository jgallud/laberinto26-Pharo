"
Es un contenedor (es elemento mapa) 
"
Class {
	#name : 'Habitacion',
	#superclass : 'Contenedor',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'visitor' }
Habitacion >> aceptarContenedor:unVisitor [
	unVisitor visitarHabitacion:self
]

{ #category : 'printing' }
Habitacion >> printOn:aStream [
	aStream nextPutAll:'Hab-' ; nextPutAll: self num asString 

]
