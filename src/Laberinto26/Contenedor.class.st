"
Es un elemento del mapa que tiene hijos (es el compuesto del patrón Composite)
"
Class {
	#name : 'Contenedor',
	#superclass : 'ElementoMapa',
	#instVars : [
		'hijos'
	],
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'gestion-hijos' }
Contenedor >> agregarHijo:unEM [

	self hijos add:unEM.
]

{ #category : 'gestion-hijos' }
Contenedor >> eliminarHijo:unEM [

	self hijos remove:unEM ifAbsent:[ ^nil ] "self.hijos.removeIfAbsent(unEM)"
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
]
