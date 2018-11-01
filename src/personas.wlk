import marcas.*
import jarras.*
import carpas.*

class Persona {
	var peso = 0
	var jarrasCompradas = #{}
	var leGustaMusicaTradicional = false
	var aguante = 0
	
	method estaEbria(){
		return (self.alcoholIngerido() * peso) > aguante
	}
	
	method alcoholIngerido(){
		return jarrasCompradas.sum({jarra => jarra.marca().graduacion()})
	}
}



class Belga inherits Persona {
	
	method leGustaMarca(marca){
		return marca.gramosLupuloPorLitro() > 4
	}
}

class Checo inherits Persona {
	
	
	method leGustaMarca(marca){
		return marca.graduacion() > 8
	}
}

class Aleman inherits Persona {
	
	method leGustaMarca(marca){
		return true
	}
}
