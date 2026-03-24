"
Orientacion define la interfaz de las orientaciones de los contenedores
"
Class {
	#name : 'Orientacion',
	#superclass : 'Object',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'caminar' }
Orientacion >> caminar:unBicho [
	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
Orientacion >> ponerElemento:unEM enContenedor:unCont [

	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
Orientacion >> recorrer:unBloque enContenedor:unCont [

	self subclassResponsibility 
]
