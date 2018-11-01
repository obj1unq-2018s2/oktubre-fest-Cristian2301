class Carpa{
	var genteAdmitida = 0
	var bandaDeMusica = false
	var jarrasCervezas = #{}
	
	method vender(){}
	
	method marcaQueVende(){
		return jarrasCervezas.first().marca()
	}
	
}
