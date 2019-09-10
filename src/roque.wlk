import wollok.game.*
import comidas.*


object roque {

	var property position = game.at(6,6) 
	var comidaGuardada = nulo
	
	method comidaGuardada() { return comidaGuardada }
	
	method setComida(param) { comidaGuardada = param }
		
	method image() = "jugador.png" 

	method move(nuevaPosicion) {
		self.position(nuevaPosicion) 
	}
	
	 
	
}

