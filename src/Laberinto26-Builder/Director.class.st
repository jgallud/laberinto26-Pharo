"
Director representa al director del patrón Builder
"
Class {
	#name : 'Director',
	#superclass : 'Object',
	#instVars : [
		'builder',
		'dict'
	],
	#category : 'Laberinto26-Builder',
	#package : 'Laberinto26-Builder'
}

{ #category : 'accessing' }
Director >> builder [

	^ builder
]

{ #category : 'accessing' }
Director >> builder: anObject [

	builder := anObject
]

{ #category : 'accessing' }
Director >> dict [

	^ dict
]

{ #category : 'accessing' }
Director >> dict: anObject [

	dict := anObject
]

{ #category : 'as yet unclassified' }
Director >> fabricarJuego [
	self builder fabricarJuego.
]

{ #category : 'factory method' }
Director >> fabricarLaberinto [
	self builder fabricarLaberinto.
	
	(self dict at:'laberinto') do:[:each | self fabricarLaberintoRecursivo:each en:'root' ].	
	
    "recorrer la colección de puertas, para poner las puertas"
	(self dict at:'puertas') do:[:each | 
		self builder fabricarPuertaLado1:(each at:1) or1:(each at:2) Lado2:(each at:3) or2:(each at:4)].

]

{ #category : 'as yet unclassified' }
Director >> fabricarLaberintoRecursivo:unDic en:padre [
| con |

"contenedores"
(unDic at:'tipo')='habitacion' ifTrue:[con:=self builder fabricarHabitacion:(unDic at:'num')].
(unDic at:'tipo')='armario' ifTrue:[con:=self builder fabricarArmario:(unDic at:'num') en:padre].

"hojas: hay que indicar el contenedor donde va la hoja"
(unDic at:'tipo')='bomba' ifTrue:[con:=self builder fabricarBombaEn:padre].

(unDic at:'hijos' ifAbsent:[^nil]) do:[:each | self fabricarLaberintoRecursivo:each en:con].

]

{ #category : 'as yet unclassified' }
Director >> iniBuilder [
	"aquí podemos cambiar el Builder para crear laberintos diferentes"
	(self dict at:'forma') = 'poligono4' ifTrue:[ self builder:LaberintoBuilder new].
]

{ #category : 'as yet unclassified' }
Director >> leerArchivo:unArchivo [
	| jsonString |
	jsonString := unArchivo asFileReference contents.
   self dict: (STON fromString: jsonString).

]

{ #category : 'accessing' }
Director >> obtenerJuego [
 ^self builder juego.
]

{ #category : 'as yet unclassified' }
Director >> procesar:unArchivo [

	self leerArchivo:unArchivo.
	self iniBuilder.
	self fabricarLaberinto.
	self fabricarJuego.
]
