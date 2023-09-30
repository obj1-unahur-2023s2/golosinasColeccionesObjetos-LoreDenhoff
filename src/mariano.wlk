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
	method golosinasDeSabor(unSabor)=compradas.filter({golosina=> golosina.sabor()==unSabor})
	method sabores()= compradas.map({golosina => golosina.sabor()}).asSet() 
	method golosinaMasCara() = compradas.max({golosinas => golosinas.precio()})
	method pesoGolosinas() = compradas.sum({golosinas => golosinas.peso()})
	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.asSet().difference(compradas.asSet())
	method gustosFaltantes(gustosDeseados) = gustosDeseados.asSet().difference(self.sabores())
	method gastoEn(sabor) = self.golosinasDeSabor(sabor).sum({golosina => golosina.precio()})
	method cantDeGolosinas(sabor) = self.golosinasDeSabor(sabor).size()
	method losSabores() =(self.sabores()).asList()  //igual a la variable de mas Popular lo puse para probar que funciona
	method masPopular() {
		var losSabores = (self.sabores()).asList()
		 (0..losSabores.size()-2).forEach({i => return if(self.cantDeGolosinas(losSabores.get(i))>=self.cantDeGolosinas(losSabores.get(i+1))) losSabores.get(i) else losSabores.get(i+1)})
			}
	method peso(sabor) = self.golosinasDeSabor(sabor).sum({g => g.peso()})
	method saborMasPesado(){
		var losSabores = (self.sabores()).asList()
			return	 (0..losSabores.size()-2).forEach({i => if(self.peso(losSabores.get(i))>self.peso(losSabores.get(i+1)))  losSabores.get(i) else losSabores.get(i+1)})
		}



}
