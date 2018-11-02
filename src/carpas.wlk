import jarras.*
import marcas.*
import personas.*

class Carpa{
	var genteAdmitida = 0 
	var personasEnCarpa = #{}
	var property bandaDeMusica = false
	var property jarrasCervezas = #{}
	
	method personasEnCarpa(){
		return personasEnCarpa
	}
	
	method ingresoDePersona(persona){
		personasEnCarpa.add(persona)
	}
	
	method marcaQueVende(){
		return jarrasCervezas.first().marca()
	}
	
	method dejaIngresarA(persona){
		return personasEnCarpa.size() + 1 < genteAdmitida and not persona.estaEbria()
	}
	
	method puedeEntrar(persona){
		return persona.quiereEntrarA(self) and self.dejaIngresarA(persona)
	}
	
	method cantEbriosEmpedernidos(){
		return personasEnCarpa.count({persona => persona.jarrasCompradas().all({jarra => jarra.litro() >= 1})})
	}
	
}
