"
Estado Cerrada
"
Class {
	#name : 'Cerrada',
	#superclass : 'EstadoPuerta',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'acciones' }
Cerrada >> abrir:unaPuerta [
	Transcript show:'Abrimos ';nextPutAll: unaPuerta printString;cr.
	unaPuerta estado:Abierta new.
]

{ #category : 'acciones' }
Cerrada >> entrar:alguien puerta:unaPuerta [
	Transcript show:'Puerta ' ; nextPutAll: unaPuerta printString ; nextPutAll: ' cerrada';cr.
]

{ #category : 'misc' }
Cerrada >> estaCerrada [ 
 ^true
]
