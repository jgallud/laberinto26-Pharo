"
JuegoBombas ilustra el patrón FactoryMethod para crear laberintos con paredes-bombas
"
Class {
	#name : 'JuegoBombas',
	#superclass : 'Juego',
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'factory method' }
JuegoBombas >> fabricarPared [
 ^ParedBomba new.
]
