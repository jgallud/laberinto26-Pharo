"
Es un elemento del mapa que tiene hijos (es el compuesto del patrón Composite)
"
Class {
	#name : 'Contenedor',
	#superclass : 'ElementoMapa',
	#instVars : [
		'hijos',
		'forma',
		'num'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'visitor' }
Contenedor >> aceptar:unVisitor [

	self aceptarContenedor:unVisitor.
	
	self hijos do:[:each | each aceptar:unVisitor]. "bombas, tunel y armas etc"
	
	"me falta recorrer las orientaciones para llegar a paredes y puertas"
	self forma orientaciones do:[:each | each aceptar:unVisitor enContenedor:self forma].
	
	"self forma aceptar:unVisitor"
	"en Forma:"
	"self orientaciones do:[:each | each aceptar:unVisitor enContenedor:self]."

]

{ #category : 'visitor' }
Contenedor >> aceptarContenedor:unVisitor [
	self subclassResponsibility 
]

{ #category : 'gestion-hijos' }
Contenedor >> agregarHijo:unEM [

	self hijos add:unEM.
]

{ #category : 'gestion-orientaciones' }
Contenedor >> agregarOrientacion:unaOr [
	"self orientaciones add:unaOr"
	self forma agregarOrientacion:unaOr
]

{ #category : 'objetos' }
Contenedor >> buscarTunel [
 ^self hijos detect:[:each | each esTunel]
]

{ #category : 'gestion-hijos' }
Contenedor >> eliminarHijo:unEM [

	self hijos remove:unEM ifAbsent:[ ^nil ] "self.hijos.removeIfAbsent(unEM)"
]

{ #category : 'gestion-orientaciones' }
Contenedor >> eliminarOrientacion:unaOr [

	"self orientaciones remove:unaOr ifAbsent:[ ^nil ]"
	self forma eliminarOrientacion: unaOr
]

{ #category : 'accessing' }
Contenedor >> entrar:alguien [

	Transcript show:alguien printString ; nextPutAll: ' está en '; nextPutAll: self printString;cr.
	alguien posicion:self.
	
	"comprobar bomba activa --> recorrer"
]

{ #category : 'accessing' }
Contenedor >> forma [

	^ forma
]

{ #category : 'accessing' }
Contenedor >> forma: anObject [

	forma := anObject
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
	"orientaciones:=OrderedCollection new."
]

{ #category : 'accessing' }
Contenedor >> irAlNorte:alguien [
	self forma irAlNorte:alguien
]

{ #category : 'accessing' }
Contenedor >> num [

	^ num
]

{ #category : 'accessing' }
Contenedor >> num: anObject [

	num := anObject
]

{ #category : 'accessing' }
Contenedor >> obtenerElemento:unaOr [
	^self forma obtenerElemento:unaOr
]

{ #category : 'gestion-orientaciones' }
Contenedor >> obtenerOrientacionAleatoria [
	"| ind |
	ind:=(1 to:self orientaciones size) atRandom.
	^self orientaciones at:ind."
	^self forma obtenerOrientacionAleatoria 
]

{ #category : 'accessing' }
Contenedor >> ponerEn:unaOr elemento:unEM [

	"unaOr ponerElemento:unEM enContenedor:self"
	self forma ponerEn:unaOr elemento:unEM
]

{ #category : 'iterator' }
Contenedor >> recorrer:unBloque [

	Transcript show:self printString;cr.
	unBloque value:self.
	self hijos do:[:each | each recorrer:unBloque].
	
	"me falta recorrer las orientaciones"
	self forma orientaciones do:[:each | each recorrer:unBloque enContenedor:self forma].
]
