import wollok.game.*

object villaGesell {
	method image() = "ciudad.png"
	method position() = game.at(8,3)
	method teEncontro(pepita) {}
	method nombre() = "Villa Gesell"
}

object buenosAires {
	method image() = "ciudad.png"
	method position() = game.at(1,1)
	method teEncontro(pepita) { }
	method nombre() = "Buenos Aires"
}
