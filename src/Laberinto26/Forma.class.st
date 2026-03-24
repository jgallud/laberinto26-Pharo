"
Forma es la implementación de la abstracción (contenedores), según el patrón Bridge.
"
Class {
	#name : 'Forma',
	#superclass : 'Object',
	#instVars : [
		'orientaciones',
		'num'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'gestion-orientaciones' }
Forma >> agregarOrientacion:unaOr [
	self orientaciones add:unaOr
]

{ #category : 'gestion-orientaciones' }
Forma >> eliminarOrientacion:unaOr [

	self orientaciones remove:unaOr ifAbsent:[ ^nil ]
]

{ #category : 'initialization' }
Forma >> initialize [ 
	orientaciones:=OrderedCollection new.
]

{ #category : 'accessing' }
Forma >> num [

	^ num
]

{ #category : 'accessing' }
Forma >> num: anObject [

	num := anObject
]

{ #category : 'gestion-orientaciones' }
Forma >> obtenerOrientacionAleatoria [
	| ind |
	ind:=(1 to:self orientaciones size) atRandom.
	^self orientaciones at:ind.
]

{ #category : 'accessing' }
Forma >> orientaciones [

	^ orientaciones
]

{ #category : 'accessing' }
Forma >> orientaciones: anObject [

	orientaciones := anObject
]

{ #category : 'gestion-orientaciones' }
Forma >> ponerEn:unaOr elemento:unEM [

	unaOr ponerElemento:unEM enContenedor:self
]
