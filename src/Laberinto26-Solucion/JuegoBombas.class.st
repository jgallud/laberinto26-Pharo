"
JuegoBombas ilustra el patrón FactoryMethod para crear laberintos con paredes-bombas
"
Class {
	#name : 'JuegoBombas',
	#superclass : 'Juego',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'factory method' }
JuegoBombas >> fabricarPared [
 ^ParedBomba new.
]
