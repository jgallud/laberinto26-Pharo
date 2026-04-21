"
Armario es un contenedor que tiene una puerta al este
"
Class {
	#name : 'Armario',
	#superclass : 'Contenedor',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'visitor' }
Armario >> aceptarContenedor:unVisitor [
	unVisitor visitarArmario:self
]

{ #category : 'consulta' }
Armario >> esArmario [
	^true
]
