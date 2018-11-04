import jarras.*
import carpas.*
import personas.*

lass Marca {
	var property gramosLupuloPorLitro = 0
	var property pais
	
}


class MarcaCervezaRubia inherits Marca{
	var property graduacion = 0
	
}


	
class MarcaCervezaNegra inherits Marca{
	var property graduacionReglamentaria = 0
	
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

