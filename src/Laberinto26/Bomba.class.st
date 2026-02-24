"
Es un elemento del mapa que puede explotar si está activa
"
Class {
	#name : 'Bomba',
	#superclass : 'Decorator',
	#instVars : [
		'activa'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'accessing' }
Bomba >> activa [

	^ activa
]

{ #category : 'accessing' }
Bomba >> activa: anObject [

	activa := anObject
]

{ #category : 'as yet unclassified' }
Bomba >> entrar [
	self activa ifTrue:[ Transcript show:'Ha explotado una bomba';cr] ifFalse:[]
]

{ #category : 'initialization' }
Bomba >> initialize [
	activa:=false.
]
