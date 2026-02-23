"
Es una subclase que crea laberintos con paredes-bomba
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
