"
Bicho representa a los enemigos del personaje
"
Class {
	#name : 'Bicho',
	#superclass : 'Object',
	#instVars : [
		'vidas',
		'poder',
		'modo'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'as yet unclassified' }
Bicho >> actua [
	self modo actua:self
]

{ #category : 'accessing' }
Bicho >> modo [

	^ modo
]

{ #category : 'accessing' }
Bicho >> modo: anObject [

	modo := anObject
]

{ #category : 'accessing' }
Bicho >> poder [

	^ poder
]

{ #category : 'accessing' }
Bicho >> poder: anObject [

	poder := anObject
]

{ #category : 'accessing' }
Bicho >> vidas [

	^ vidas
]

{ #category : 'accessing' }
Bicho >> vidas: anObject [

	vidas := anObject
]
