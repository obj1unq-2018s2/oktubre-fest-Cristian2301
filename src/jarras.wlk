import carpas.*
import marcas.*
import personas.*


class Jarra {
	var property litros = 0
	var property marca
	
	method contenidoDeAlcohol(){
		return litros * marca.graduacion()
	}
}
