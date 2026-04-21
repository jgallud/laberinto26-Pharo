"
Modo define la interfaz de los comportamientos de los bichos
"
Class {
	#name : 'Modo',
	#superclass : 'Object',
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'misc' }
Modo >> actua:unBicho [

	self camina:unBicho. 
	self ataca:unBicho.
	self duerme:unBicho
]

{ #category : 'misc' }
Modo >> ataca:unBicho [
	unBicho atacar.
]

{ #category : 'misc' }
Modo >> camina:unBicho [
	| or |
	or:=unBicho obtenerOrientacionAleatoria. "or:=unBicho posicion forma obtenerOrientacionAleatoria"
	or caminar:unBicho.
]

{ #category : 'misc' }
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
