"
Perezoso es un tipo de bicho que se mueve poco
"
Class {
	#name : 'Perezoso',
	#superclass : 'Modo',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'as yet unclassified' }
Perezoso >> duerme:unBicho [
	Transcript show:unBicho printString ; nextPutAll: ' duerme';cr.
   (Delay forSeconds: 3) wait.

]

{ #category : 'consulta' }
Perezoso >> esPerezoso [
	^true
]

{ #category : 'printing' }
Perezoso >> printOn:aStream [
	aStream nextPutAll:'Perezoso'
]
