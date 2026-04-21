"
Orientacion define la interfaz de las orientaciones de los contenedores
"
Class {
	#name : 'Orientacion',
	#superclass : 'Object',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'visitor' }
Orientacion >> aceptar:unVisitor enContenedor:unaForma [
	self subclassResponsibility 
]

{ #category : 'caminar' }
Orientacion >> caminar:unBicho [
	self subclassResponsibility 
]

{ #category : 'accessing' }
Orientacion >> obtenerElemento:unaForma [
	self subclassResponsibility 
]

{ #category : 'accessing' }
Orientacion >> ponerElemento:unEM enContenedor:unCont [

	self subclassResponsibility 
]

{ #category : 'iterator' }
Orientacion >> recorrer:unBloque enContenedor:unCont [

	self subclassResponsibility 
]
