import wollok.game.*

object villaGesell {
	method image() = "ciudad.png"
	method position() = game.at(8,3)
	method teEncontro(roque) {}
	method nombre() = "Villa Gesell"
}

object buenosAires {
	method image() = "ciudad.png"
	method position() = game.at(1,1)
	method teEncontro(roque) { }
	method nombre() = "Buenos Aires"
}
