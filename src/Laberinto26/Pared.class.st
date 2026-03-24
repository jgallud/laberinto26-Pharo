"
Pared es un elemento del mapa que no se puede atravesar
"
Class {
	#name : 'Pared',
	#superclass : 'Hoja',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'as yet unclassified' }
Pared >> entrar [
	Transcript show:'Has chocado con una pared';cr.
]

{ #category : 'as yet unclassified' }
Pared >> entrar:alguien [
		Transcript show:alguien printString ; nextPutAll: ' se ha chocado con una pared';cr.
	
]
