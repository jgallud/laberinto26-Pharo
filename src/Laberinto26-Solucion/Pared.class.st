"
Pared es un elemento del mapa que no se puede atravesar
"
Class {
	#name : 'Pared',
	#superclass : 'Hoja',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'visitor' }
Pared >> aceptar:unVisitor [
	unVisitor visitarPared:self
]

{ #category : 'misc' }
Pared >> entrar:alguien [
		Transcript show:alguien printString ; nextPutAll: ' se ha chocado con una pared';cr.
	
]
