"
Es la interfaz de los elementos simples del laberinto (es Leaf en el patrón Composite)
"
Class {
	#name : 'Hoja',
	#superclass : 'ElementoMapa',
	#category : 'Laberinto26',
	#package : 'Laberinto26'
}

{ #category : 'iterator' }
Hoja >> recorrer:unBloque [

	Transcript show:self printString;cr.
	unBloque value:self.
	
]
