import golosinas.*
import gustos.*

object mariano {
	
	var compradas =[bombon, alfajor, caramelo]
		
	method comprar(unaGolosina){compradas.add(unaGolosina)} 
	method desechar(unaGolosina){compradas.remove(unaGolosina)}
	method cantidadDeGolosinas() = compradas.size()
	method tieneLaGolosina(unaGolosina) = compradas.contains(unaGolosina)
	method probarGolosina(){compradas.forEach({golosina => golosina.mordisco()})}
	method hayGolosinaSinTACC()=compradas.any({golosina => golosina.libreDeGluten()})
	method preciosCuidados()=compradas.all({golosina => golosina.precio()<= 10})
	method golosinaDeSabor(unSabor)=compradas.find({golosina=> golosina.sabor()==unSabor})
	method golosinasDeSabor(unSabor)=compradas.filter({golosina=> golosina.sabor()==unSabor})//devuelve las golosinas del sabor
	method sabores()= compradas.map({golosina => golosina.sabor()}).asSet() //ME DEVUELVE LOS SABORES DE LA BOLSA
	method golosinaMasCara() = compradas.max({golosinas => golosinas.precio()})
	method pesoGolosinas() = compradas.sum({golosinas => golosinas.peso()})
	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.asSet().difference(compradas.asSet())
	method gustosFaltantes(gustosDeseados) = gustosDeseados.asSet().difference(self.sabores())
	method gastoEn(sabor) = self.golosinasDeSabor(sabor).sum({golosina => golosina.precio()})
	method cantDeGolosinas(sabor) = self.golosinasDeSabor(sabor).size()
	method masPopular() {
		var saboresGolosinas = (self.sabores()).asList()

		return (self.cantDeGolosinas(saboresGolosinas.forEach({g => g})))
	}


}
