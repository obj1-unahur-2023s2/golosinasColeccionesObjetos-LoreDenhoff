import gustos.*

object bombon {
	var peso = 15
	
	method peso() = 0.max(peso)
	method precio() = 5
	method sabor() = frutilla
	method libreDeGluten () = true
	method mordisco() {	peso = (peso*0.8) - 1} // peso * 0.8 es el porcentaje del peso que queda después de perder el 20%
		                                      //peso=peso*08 es lo mismo que peso *=0.8	
}

object alfajor {
	var peso = 300
	
	method peso() = 0.max(peso)
	method precio() = 12
	method sabor() = chocolate
	method libreDeGluten () = false
	method mordisco() {peso *= 0.8} 
}

object caramelo {
	var peso = 5
	
	method peso() = 0.max(peso)
	method precio() = 1
	method sabor() = frutilla
	method libreDeGluten () = true
	method mordisco() {peso-= 1} 
}

object chupetin {
	var peso = 7
	
	method peso() = 0.max(peso)
	method precio() = 2
	method sabor() = naranja
	method libreDeGluten () = true
	method mordisco() = if(peso>2) peso *= 0.9  else peso
}

object oblea {
	var peso = 250
	
	method peso() = 0.max(peso)
	method precio() = 5
	method sabor() = vainilla
	method libreDeGluten () = false
	method mordisco() = if (peso > 70) peso *= 0.5 else peso *= 0.75
} 

object chocolatin {
	var pesoInicial 
	var peso 
	
	method pesoInicial(unPeso){
		pesoInicial = unPeso
		peso = unPeso
	} 
	method peso() = 0.max(peso)
	method sabor() = chocolate
	method libreDeGluten () = false
	method precio()= (pesoInicial*0.5)
	method mordisco(){peso -= 2}
	
}

object golosinaBaniada {
	var property golosinaDeBase 
	var baniado = 4
	
	method peso() = golosinaDeBase.peso() + baniado
	method precio() = golosinaDeBase.precio() + 2
	method sabor() = golosinaDeBase.sabor()
	method libreDeGluten() = golosinaDeBase.libreDeGluten()
	method mordisco(){
		golosinaDeBase.mordisco()
		baniado = 0.max(baniado - 2)
	}
}

object pastillaTuttiFrutti {
	var property libreDeGluten = false
	const sabores = [frutilla, chocolate, naranja]
	var indiceSabor = 0
	
	method precio() = if (libreDeGluten) 7 else 10
	method peso()=5
	method sabor()= sabores.get(indiceSabor)
	method mordida(){
		indiceSabor = (indiceSabor + 1) % sabores.size()
	}
}













