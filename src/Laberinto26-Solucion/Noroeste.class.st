Class {
	#name : 'Noroeste',
	#superclass : 'Orientacion',
	#classVars : [
		'UnicaInstancia'
	],
	#category : 'Laberinto26-Solucion',
	#package : 'Laberinto26-Solucion'
}

{ #category : 'accessing' }
Noroeste class >> default [
 UnicaInstancia isNil ifTrue:[UnicaInstancia:=super new].
 ^UnicaInstancia
]

{ #category : 'instance creation' }
Noroeste class >> new [
	self error:'no se puede crear objeto'.
]

{ #category : 'caminar' }
Noroeste >> caminar:unBicho [
 | em |
	em:=unBicho posicion forma no. "que hay en el este"
	
	em entrar:unBicho.
]

{ #category : 'misc' }
Noroeste >> ponerElemento:unEM enContenedor:unCont [
	unCont no:unEM
]

{ #category : 'misc' }
Noroeste >> recorrer:unBloque enContenedor:unCont [

	unCont no recorrer:unBloque
]
