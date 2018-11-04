import marcas.*
import jarras.*
import carpas.*

lass Persona {
	var property peso = 0
	var jarrasCompradas = #{}
	var property leGustaMusicaTradicional = false
	var property aguante = 0
	var property pais
	
	method jarrasCompradas(){
		return jarrasCompradas
	}
	
	method comprarJarra(jarra){
		jarrasCompradas.add(jarra)
	}
	
	method estaEbria(){
		return (self.alcoholIngerido() * peso) > aguante
	}
	
	method alcoholIngerido(){
		return jarrasCompradas.sum({jarra => jarra.contenidoDeAlcohol()})
	}
	
	method ingresarA(carpa){
		if(carpa.puedeEntrar(self)){
			carpa.ingresoDePersona(self)
		}
		else{
			self.error("no puede ingresar")
		}
	}
	
	method esPatriota(){
		return jarrasCompradas.all({jarra => jarra.marca().pais() == pais})
	}
	
}



class Belga inherits Persona {
	
	method leGustaMarca(marca){
		return marca.gramosLupuloPorLitro() > 4
	}
	
	method quiereEntrarA(carpa){
		return self.leGustaMarca(carpa.marcaQueVende()) and leGustaMusicaTradicional == carpa.bandaDeMusica()
	}
	
}

class Checo inherits Persona {
	
	method leGustaMarca(marca){
		return marca.graduacion() > 8
	}
	
	method quiereEntrarA(carpa){
		return self.leGustaMarca(carpa.marcaQueVende()) and leGustaMusicaTradicional == carpa.bandaDeMusica()
	}
}

class Aleman inherits Persona {
	
	method leGustaMarca(marca){
		return true
	}
	
	method quiereEntrarA(carpa){
		return self.leGustaMarca(carpa.marcaQueVende()) and leGustaMusicaTradicional == carpa.bandaDeMusica() 
				and carpa.personasEnCarpa().size() % 2 == 0
	}
}
