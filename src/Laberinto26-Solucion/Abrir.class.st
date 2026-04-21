"
Comando para abrir las puertas del laberinto
"
Class {
	#name : 'Abrir',
	#superclass : 'Comando',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'misc' }
Abrir >> ejecutar:alguien [
 	self receptor abrir
]
