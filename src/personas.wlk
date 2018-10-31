class Persona {
	var peso = 0
	var jarrasCompradas = #{}
	var leGustaMusicaTradicional = false
	var aguante = 0
	
	method estaEbria(){
		return (alcoholIngerido * peso) > aguante
	}
}



class Belga inherits Persona {
	
	method leGustaMarca(marca){
		return marca.gramosLupuloPorLitro() > 4
	}
}

class Checo inherits Persona {
	
//	
//	method leGustaMarca(marca){
//		return marca.
//	}
}

class Aleman inherits Persona {
	
	method leGustaMarca(marca){
		return true
	}
}
