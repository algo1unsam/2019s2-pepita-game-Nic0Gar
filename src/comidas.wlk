import wollok.game.*
import pepita.*

object manzana {
	var existe = true
	method image() = "manzana.png"
	method existe() = existe
	method position() = game.at(5,1)
	method energia() = 80
	method nombre() = "Manzana"
	method teEncontro(pepita) {
			self.teComieron()
			pepita.come(self)
	}
	method teComieron(){
		game.removeVisual(self)
		pepita.come(self)
		existe=false
	}
}

object alpiste {
	var existe = true
	method image() = "alpiste.png"
	method existe() = existe
	method position() = game.at(5,5)
	method energia() = 5
	method nombre() = "Alpiste"
	method teEncontro(pepita) {
			self.teComieron()
			pepita.come(self)
	}
	method teComieron(){
		game.removeVisual(self)
		pepita.come(self)
		existe=false
	}
	
}
