"
Es-una hoja (que es elemento del mapa) que tiene-un (decora) elemento del mapa
"
Class {
	#name : 'Decorator',
	#superclass : 'Hoja',
	#instVars : [
		'em'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'accessing' }
Decorator >> em [

	^ em
]

{ #category : 'accessing' }
Decorator >> em: anObject [

	em := anObject
]
