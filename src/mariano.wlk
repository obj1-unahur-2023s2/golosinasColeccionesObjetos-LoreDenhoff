import golosinas.*
import gustos.*

object mariano {
	
	var compradas =[]
	
	method comprar(unaGolosina){compradas.add(unaGolosina)} 
	method desechar(unaGolosina){compradas.remove(unaGolosina)}
	method cantidadDeGolosinas() = compradas.size()
	method tieneLaGolosina(unaGolosina) = compradas.contains(unaGolosina)
	method probarGolosina(){compradas.forEach({golosina => golosina.mordisco()})}
	method hayGolosinaSinTACC(){compradas.any({golosina => golosina.libreDeGluten()})}
	method preciosCuidados(){compradas.all({golosina => golosina.precio()<= 10})}
	method golosinaDeSabor(unSabor){compradas.find({golosina=> golosina.sabor()==unSabor})}
	method golosinasDeSabor(unSabor){compradas.filter({golosina=> golosina.sabor()==unSabor})}
	
	method sabores(){}
	
	method golosinaMasCara(){}
	
	method pesoGolosina(){}
	
	
}
