Class {
	#name : 'VisitorCerrarPuertas',
	#superclass : 'Visitor',
	#category : 'Laberinto26-Visitor',
	#package : 'Laberinto26-Visitor'
}

{ #category : 'visitor' }
VisitorCerrarPuertas >> visitarPuerta:unaPuerta [
	unaPuerta cerrar.
]
