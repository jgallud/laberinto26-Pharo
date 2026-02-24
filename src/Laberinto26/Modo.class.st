"
Modo define la interfaz de los comportamientos de los bichos
"
Class {
	#name : 'Modo',
	#superclass : 'Object',
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'as yet unclassified' }
Modo >> actua:unBicho [

	self camina:unBicho 
	"self ataca"
	"self duerme"
]

{ #category : 'as yet unclassified' }
Modo >> camina:unBicho [

	"no hacer nada"
	"self subclassResponsibility"
	"definir un comportamiento predeterminado"
]
