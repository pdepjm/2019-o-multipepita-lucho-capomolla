object pepita {
	var energia = 100
	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia.between(500, 1000)
	}
	
	method cuantoQuiereVolar() {
		var distancia = energia / 5
		if(energia.between(300, 400)){
			distancia += 10
		}
		if(self.esMultiploDe20(energia) == 0){
			distancia += 15
		}

		return distancia
	}
	
	method esMultiploDe20(valor) {
		return valor % 20
	}
	
	method salirAComer() {
		self.vola(10)
		self.come(alpiste)
	}
	
	method haceLoQueQuieras() {
		if(self.estaCansada()){
			self.come(alpiste)
		}
		if(self.estaFeliz()) {
			self.vola(8)
		}
	}	
}


object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}


object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}


object mijo {
	var energia = 0  
	
	method mojarse() {
		energia = 15
	}
	
	method secarse() {
		energia = 20
	}	
	
	method energiaQueOtorga(){
		return energia
	}
}


object canelones {
	var energia = 20
	
	method ponerQueso() {
		energia += 7
	}
	method sacarQueso() {
		energia -= 7
	}
	
	method ponerSalsa() {
		energia += 5
	}
	method sacarSalsa() {
		energia -= 5
	}
	
	method energiaQueOtorga() {
		return energia
	}
}
