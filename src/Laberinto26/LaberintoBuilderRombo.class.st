"
LaberintoBuilderRombo fabrica laberintos con forma rombo
"
Class {
	#name : 'LaberintoBuilderRombo',
	#superclass : 'LaberintoBuilder',
	#category : 'Laberinto26-Builder',
	#package : 'Laberinto26',
	#tag : 'Builder'
}

{ #category : 'accessing' }
LaberintoBuilderRombo >> asignarOrientaciones:unaForma [

	unaForma orientaciones add:(self fabricarNoreste); add:(self fabricarNoroeste); add:(self fabricarSureste); add:(self fabricarSuroeste)
]

{ #category : 'as yet unclassified' }
LaberintoBuilderRombo >> fabricarForma [

	|forma|
	forma:=Rombo new.
	self asignarOrientaciones: forma.
	^forma
]
