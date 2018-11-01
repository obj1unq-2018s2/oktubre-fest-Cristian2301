import jarras.*
import carpas.*
import personas.*

class Marca {
	var property gramosLupuloPorLitro = 0
	var pais
	
}


class MarcaCervezaRubia inherits Marca{
	var property graduacion
	
}


	
class MarcaCervezaNegra inherits Marca{
	var graduacionReglamentaria
	
//	method graduacion(jarra){
//		return (graduacionReglamentaria.min((gramosLupuloPorLitro * jarra.litros()) * 2)  * 100) / jarra.litros()     //DUDAAA!!!!
//	}

	method graduacion(){
		return graduacionReglamentaria.min(gramosLupuloPorLitro * 2)
	}
}



class MarcaCervezaRoja inherits MarcaCervezaNegra{
	
	override method graduacion(){
		return super() * 1.25
	}	
	
}

