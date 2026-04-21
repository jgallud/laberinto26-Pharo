"
El estado Abierta
"
Class {
	#name : 'Abierta',
	#superclass : 'EstadoPuerta',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'acciones' }
Abierta >> cerrar:unaPuerta [
	Transcript show:'Cerramos ';nextPutAll: unaPuerta printString;cr.
	unaPuerta estado:Cerrada new.
]

{ #category : 'acciones' }
Abierta >> entrar:alguien puerta:unaPuerta [
 unaPuerta puedeEntrar: alguien
 
	
]

{ #category : 'misc' }
Abierta >> estaAbierta [
 ^true
]
