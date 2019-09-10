import ciudades.*
import wollok.game.*
import comidas.*
import roque.*


object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property position = game.at(3,3) 
	
	method image() = if (energia > 100) "pepita-gorda-raw.png" else "pepita.png"
	
	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method teEncontro(roque){
		
		self.come(roque.comidaGuardada())
		roque.comidaGuardada().respawn()
		roque.setComida(nulo)
		
	}
		
	
	
}
