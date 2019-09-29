
	
class ChevroletCorsa {
  var property color
  method capacidad() { return 4  }
  method velocidadMaxima(){return 150}
  method peso(){return 1300}
}

class RenaultKwid {
  var tieneTanqueAdicional
  method capacidad() {
    if (tieneTanqueAdicional) {return 3}
    else {return 4}  
  }
  method velocidadMaxima(){
  	 if (tieneTanqueAdicional) {return 120}
    else {return 110}  
  	}
  method peso(){
  	 if (tieneTanqueAdicional) {return 1200+150}
    else {return 1200}  
  }
  method color() { return azul }
}


object trafic {
	
  var property motor=bataton
  var property interior=comodo
  method color(){return blanco}
  method peso() {
    return 4000 + motor.peso() + interior.peso()
  }
  method capacidad() { return interior.pax()  }
  method velocidadMaxima(){return motor.velocidad()}
 
}

// una opción: clase Motor
class Motor {}

// otra opción: un objeto x cada motor
object comodo {
  method peso() { return 700 }
  method pax(){return 5}
}
object popular {
  method peso() { return 1000 }
  method pax(){return 12}
}
object bataton {
  method peso() { return 500 }
  method velocidad(){return 80}
}
object pulenta {
	method peso() { return 800 }
    method velocidad(){return 130}
  
}

class AutoEspecial {
  var property color
  var property capacidad
  var property velocidadMaxima
  var property peso

}


// sería como el depósito, maneja una colección de rodados
class Dependencia {
	var property flota=[]
	var property empleados
	method agregarAFlota(rodado){ flota.add(rodado)}
	method quitarDeFlota(rodado){flota.remove(rodado)}
	method pesoTotalFlota(){
		return flota.sum({auto=>auto.peso()})}
//pesoTotalFlota()`, la suma del peso de cada rodado afectado a la flota.
    method estaBienEquipda(){
//estaBienEquipada()`, es verdadero si la flota tiene al menos 3 rodados
//, y además, _todos_ los rodados de la flota pueden ir al menos a 100 km/h.
		return flota.count({auto=})
- `capacidadTotalEnColor(color)`, la cantidad total de personas que puede transportar la flota afectada a la dependencia, considerando solamente los rodados del color indicado.
- `colorDelRodadoMasRapido()`, eso.
- `capacidadFaltante()`, que es el resultado de restar, de la cantidad de empleados, la capacidad sumada de los vehículos de la flota. 
- `esGrande()`, la condición es que la dependencia tenga al menos 40 empleados y 5 rodados.
	
	

}

// recordamos: los colores con objetos vacíos, no como String
object azul {}
object rojo {}
object verde {}
object blanco{}


// un ejemplo de cómo configurar la trafic en un test
test "pruebo la trafic" {
  trafic.motor(bataton)
}	
}
