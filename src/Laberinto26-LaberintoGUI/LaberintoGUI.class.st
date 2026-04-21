Class {
	#name : 'LaberintoGUI',
	#superclass : 'BorderedMorph',
	#instVars : [
		'juego',
		'person',
		'win'
	],
	#category : 'Laberinto26-LaberintoGUI',
	#package : 'Laberinto26-LaberintoGUI'
}

{ #category : 'dibujar' }
LaberintoGUI >> calcularPosicion [
]

{ #category : 'inicio' }
LaberintoGUI >> iniciarJuego [
	|director ruta|
		ruta:='C:\Users\Jose.Gallud\CloudStation\asignaturas\diseño de sofware\curso25-26\laberintos\'.
		director:=Director new procesar:ruta,'lab4hab4bm2bichosTunel.json'.
		self juego:director obtenerJuego.
		self mostrarLaberinto.
		win:=self openInWindowLabeled:'LaberintoGUI'.
		"self agregarPersonaje:'Pepín'. 
		self dibujarLaberinto."
]

{ #category : 'accessing' }
LaberintoGUI >> juego [

	^ juego
]

{ #category : 'accessing' }
LaberintoGUI >> juego: anObject [

	juego := anObject
]

{ #category : 'dibujar' }
LaberintoGUI >> mostrarLaberinto [
	self calcularPosicion. "calcula la posición relativa de las habitaciones respecto de la hab1"
	"self normalizar." "traslación de todo el laberinto para que no haya coordenadas negativas"
	"self calcularDimensiones." "repartir el ancho y alto del canvas entre las habitaciones"
	"self asignarPuntosReales." "asigna las posiciones a cada contenedor (forma)"
]

{ #category : 'accessing' }
LaberintoGUI >> person [

	^ person
]

{ #category : 'accessing' }
LaberintoGUI >> person: anObject [

	person := anObject
]

{ #category : 'accessing' }
LaberintoGUI >> win [

	^ win
]

{ #category : 'accessing' }
LaberintoGUI >> win: anObject [

	win := anObject
]
