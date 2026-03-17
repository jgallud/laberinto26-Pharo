"
Modo define la interfaz de los comportamientos de los bichos
"
Class {
	#name : 'Modo',
	#superclass : 'Object',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26',
	#tag : 'Solucion'
}

{ #category : 'acciones' }
Modo >> actua:unBicho [

	self camina:unBicho. 
	"self ataca"
	self duerme:unBicho
]

{ #category : 'acciones' }
Modo >> camina:unBicho [
	| or |
	or:=unBicho posicion obtenerOrientacionAleatoria.
	or caminar:unBicho.
]

{ #category : 'acciones' }
Modo >> duerme:unBicho [
	self subclassResponsibility 
]

{ #category : 'consulta' }
Modo >> esAgresivo [
	^false
]

{ #category : 'consulta' }
Modo >> esPerezoso [
	^false
]
