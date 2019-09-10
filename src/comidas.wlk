import wollok.game.*
import pepita.*
import roque.*

object manzana {
	
	
	var posicion = game.at(5,1)
	
	method image() = "manzana.png"
	method position() = posicion
	method energia() = 80
	method nombre() = "Manzana"
	
	method nuevaPosicion(){ posicion = game.at(0.randomUpTo(9), 0.randomUpTo(9) ) }
	
	method respawn(){
			self.nuevaPosicion()
			game.addVisual(self)
	}
	
	method teEncontro(roque) {
		
		self.teComieron()
		roque.setComida(self)
			
	}
	
	method desaparece(){
		game.removeVisual(self)
		roque.setComida(self)
	}
	
	method teComieron(){
					roque.comidaGuardada().respawn()
					self.desaparece()
					roque.setComida(self)
					
	}
		
}
object nulo{
	method desaparece(){}
	method teComieron(){}
	method teEncontro(roque){}
	method respawn(){}
	method energia(){return 0}
}

object alpiste {
	
	var posicion = game.at(5,5)
	method image() = "alpiste.png"
	
	method position() = posicion
	method energia() = 5
	method nombre() = "Alpiste"
	
	method nuevaPosicion(){ posicion = game.at(0.randomUpTo(9), 0.randomUpTo(9) ) }
	
	method respawn(){
			self.nuevaPosicion()
			game.addVisual(self)
	}
	
	method teEncontro(roque) {
		
		self.teComieron()
		roque.setComida(self)
			
	}
	
	method desaparece(){
		game.removeVisual(self)
		roque.setComida(self)
	}
	
	method teComieron(){
		
					roque.comidaGuardada().respawn()
					self.desaparece()
					roque.setComida(self)
	
	}
}
	

