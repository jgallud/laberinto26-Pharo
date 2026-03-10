"
LaberintoBuilder es el ConcreteBuilder del patrón Builder
"
Class {
	#name : 'LaberintoBuilder',
	#superclass : 'Object',
	#instVars : [
		'laberinto',
		'juego'
	],
	#category : 'Laberinto26-Builder',
	#package : 'Laberinto26-Builder'
}

{ #category : 'accessing' }
LaberintoBuilder >> asignarOrientaciones:unCont [

	unCont orientaciones add:(self fabricarNorte); add:(self fabricarEste); add:(self fabricarSur); add:(self fabricarOeste)
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarArmario:unNum en:unCont [

	|arm pt| 
	arm:=Armario new. "new:unNum"
	arm num:unNum.
	self asignarOrientaciones: arm.
	"hab forma:self fabricarForma.
	hab forma num:unNum."
	"hab agregarOrientacion: self fabricarNorte; agregarOrientacion:self fabricarSur; agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste."
	
	arm orientaciones do:[:each | arm ponerEn:each elemento:self fabricarPared].
	
	
	pt:=Puerta new.
	pt lado1:arm.
	pt lado2:unCont.
	
	arm ponerEn:(self fabricarEste) elemento:pt.
	
	"self laberinto agregarHabitacion: hab."
	unCont agregarHijo: arm.
	
	^arm	
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarBombaEn:unCont [

	|bm|
	bm:=Bomba new.
	unCont agregarHijo:bm.
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarEste [
	^Este default
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarHabitacion:unNum [
	|hab|
	hab:=Habitacion new.
	hab num:unNum.
	self asignarOrientaciones: hab.
	"hab forma:self fabricarForma.
	hab forma num:unNum."
	"hab agregarOrientacion: self fabricarNorte; agregarOrientacion:self fabricarSur; agregarOrientacion:self fabricarEste; agregarOrientacion:self fabricarOeste."
	
	hab orientaciones do:[:each | hab ponerEn:each elemento:self fabricarPared].
	
	self laberinto agregarHabitacion: hab.
	
	^hab	
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarJuego [
	self juego:Juego new.
	self juego laberinto:self laberinto.
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarLaberinto [
	self laberinto:Laberinto new.
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarNorte [
	^Norte default
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarOeste [
	^Oeste default
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarPared [
	^Pared new
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarPuertaLado1:num1 or1:unaOr Lado2:num2 or2:otraOr [

	|lado1 lado2 pt objOr1 objOr2|
	
	pt:=Puerta new.
	lado1:=self laberinto obtenerHabitacion: num1.
	lado2:=self laberinto obtenerHabitacion: num2.
	
	pt lado1:lado1.
	pt lado2:lado2.
	
	objOr1:=self perform:('fabricar',unaOr) asSymbol. "fabricar+Norte => fabricarNorte"
	objOr2:=self perform:('fabricar',otraOr) asSymbol.
	
	lado1 ponerEn:objOr1 elemento:pt.
	lado2 ponerEn:objOr2 elemento:pt.
]

{ #category : 'factory method' }
LaberintoBuilder >> fabricarSur [
	^Sur default
]

{ #category : 'accessing' }
LaberintoBuilder >> juego [

	^ juego
]

{ #category : 'accessing' }
LaberintoBuilder >> juego: anObject [

	juego := anObject
]

{ #category : 'accessing' }
LaberintoBuilder >> laberinto [

	^ laberinto
]

{ #category : 'accessing' }
LaberintoBuilder >> laberinto: anObject [

	laberinto := anObject
]
