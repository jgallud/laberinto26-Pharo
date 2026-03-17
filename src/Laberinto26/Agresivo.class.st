"
Agresivo es un modo del bicho más malo
"
Class {
	#name : 'Agresivo',
	#superclass : 'Modo',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'as yet unclassified' }
Agresivo >> duerme:unBicho [
	Transcript show:unBicho printString ; nextPutAll: ' duerme';cr.
   (Delay forSeconds: 1) wait.

]

{ #category : 'consulta' }
Agresivo >> esAgresivo [
	^true
]

{ #category : 'printing' }
Agresivo >> printOn:aStream [
	aStream nextPutAll:'Agresivo'
]
