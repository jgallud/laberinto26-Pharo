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

{ #category : 'as yet unclassified' }
Modo >> actua:unBicho [

	self camina:unBicho. 
	self ataca:unBicho.
	self duerme:unBicho
]

{ #category : 'as yet unclassified' }
Modo >> ataca:unBicho [
	unBicho atacar.
]

{ #category : 'as yet unclassified' }
Modo >> camina:unBicho [
	| or |
	or:=unBicho obtenerOrientacionAleatoria. "or:=unBicho posicion forma obtenerOrientacionAleatoria"
	or caminar:unBicho.
]

{ #category : 'as yet unclassified' }
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
