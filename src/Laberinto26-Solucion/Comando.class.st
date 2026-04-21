"
Interfaz de los comandos del laberinto
"
Class {
	#name : 'Comando',
	#superclass : 'Object',
	#instVars : [
		'receptor'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'accion' }
Comando >> ejecutar:alguien [
	self subclassResponsibility 
]

{ #category : 'accessing' }
Comando >> receptor [

	^ receptor
]

{ #category : 'accessing' }
Comando >> receptor: anObject [

	receptor := anObject
]
