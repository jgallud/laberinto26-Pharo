"
La interfaz de los estados de la puerta
"
Class {
	#name : 'EstadoPuerta',
	#superclass : 'Object',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'acciones' }
EstadoPuerta >> abrir:unaPuerta [
	"no hace nada por defecto"
]

{ #category : 'acciones' }
EstadoPuerta >> cerrar:unaPuerta [
	"no hace nada por defecto"
]

{ #category : 'acciones' }
EstadoPuerta >> entrar:alguien puerta:unaPuerta [
	self subclassResponsibility 
]

{ #category : 'consulta' }
EstadoPuerta >> estaAbierta [
 ^false
]

{ #category : 'consulta' }
EstadoPuerta >> estaCerrada [
 ^false
]
