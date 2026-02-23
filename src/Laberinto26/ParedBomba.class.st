"
ParedBomba es una pared que tiene una bomba
"
Class {
	#name : 'ParedBomba',
	#superclass : 'Pared',
	#instVars : [
		'activa'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'initialization' }
ParedBomba >> initialize [
	activa:=false.
]
