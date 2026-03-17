"
Es un elemento del mapa que tiene hijos (es el compuesto del patrón Composite)
"
Class {
	#name : 'Contenedor',
	#superclass : 'ElementoMapa',
	#instVars : [
		'hijos',
		'orientaciones',
		'este',
		'norte',
		'num',
		'oeste',
		'sur'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'gestion-hijos' }
Contenedor >> agregarHijo:unEM [

	self hijos add:unEM.
]

{ #category : 'gestion-orientaciones' }
Contenedor >> agregarOrientacion:unaOr [
	self orientaciones add:unaOr
]

{ #category : 'gestion-hijos' }
Contenedor >> eliminarHijo:unEM [

	self hijos remove:unEM ifAbsent:[ ^nil ] "self.hijos.removeIfAbsent(unEM)"
]

{ #category : 'gestion-orientaciones' }
Contenedor >> eliminarOrientacion:unaOr [

	self orientaciones remove:unaOr ifAbsent:[ ^nil ]
]

{ #category : 'acciones' }
Contenedor >> entrar:alguien [

	Transcript show:alguien printString ; nextPutAll: ' está en '; nextPutAll: self printString;cr.
	alguien posicion:self.
	
	"comprobar bomba activa --> recorrer"
]

{ #category : 'accessing' }
Contenedor >> este [

	^ este
]

{ #category : 'accessing' }
Contenedor >> este: anObject [

	este := anObject
]

{ #category : 'accessing' }
Contenedor >> hijos [

	^ hijos
]

{ #category : 'accessing' }
Contenedor >> hijos: anObject [

	hijos := anObject
]

{ #category : 'initialization' }
Contenedor >> initialize [
	hijos:=OrderedCollection new.
	orientaciones:=OrderedCollection new.
]

{ #category : 'accessing' }
Contenedor >> norte [

	^ norte
]

{ #category : 'accessing' }
Contenedor >> norte: anObject [

	norte := anObject
]

{ #category : 'accessing' }
Contenedor >> num [

	^ num
]

{ #category : 'accessing' }
Contenedor >> num: anObject [

	num := anObject
]

{ #category : 'gestion-orientaciones' }
Contenedor >> obtenerOrientacionAleatoria [
	| ind |
	ind:=(1 to:self orientaciones size) atRandom.
	^self orientaciones at:ind.
]

{ #category : 'accessing' }
Contenedor >> oeste [

	^ oeste
]

{ #category : 'accessing' }
Contenedor >> oeste: anObject [

	oeste := anObject
]

{ #category : 'accessing' }
Contenedor >> orientaciones [

	^ orientaciones
]

{ #category : 'accessing' }
Contenedor >> orientaciones: anObject [

	orientaciones := anObject
]

{ #category : 'accessing' }
Contenedor >> ponerEn:unaOr elemento:unEM [

	unaOr ponerElemento:unEM enContenedor:self
]

{ #category : 'iterator' }
Contenedor >> recorrer:unBloque [

	Transcript show:self printString;cr.
	unBloque value:self.
	self hijos do:[:each | each recorrer:unBloque].
	
	"me falta recorrer las orientaciones"
	self orientaciones do:[:each | each recorrer:unBloque enContenedor:self].
]

{ #category : 'accessing' }
Contenedor >> sur [

	^ sur
]

{ #category : 'accessing' }
Contenedor >> sur: anObject [

	sur := anObject
]
