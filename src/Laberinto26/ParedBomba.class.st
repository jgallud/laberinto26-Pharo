"
ParedBomba es una pared que tiene una bomba
"
Class {
	#name : 'ParedBomba',
	#superclass : 'Pared',
	#instVars : [
		'activa'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'initialization' }
ParedBomba >> initialize [
	activa:=false.
]
