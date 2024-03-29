import wollok.game.*
	
class ChevroletCorsa {
  var property color=azul
  method capacidad() { return 4  }
  method velocidadMaxima(){return 150}
  method peso(){return 1300}
//  var property posicion=[]
  
  //method moverseHacia(direccion){  
  	//if (direccion==norte) { posicion.add(new Position(3,7))}
  	//else if (direccion==sur) {posicion.add(new Position ((3,7).down(14))}
  	//else if(direccion==este) {posicion.add(new Position(7,6))}
  	//else {posicion.add(new Position((7,6).left(14))}	
  //}
}	
  
object norte{}
object sur{}
object este{}
object oeste{}



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
  var property color=azul
  var property capacidad
  var property velocidadMaxima=100
  var property peso

}


// sería como el depósito, maneja una colección de rodados
class Dependencia {
	var property flota=[]
	var property empleados=10
	method agregarAFlota(rodado){ flota.add(rodado)}
	method quitarDeFlota(rodado){flota.remove(rodado)}
	method pesoTotalFlota(){
		return flota.sum({auto=>auto.peso()})}
//pesoTotalFlota()`, la suma del peso de cada rodado afectado a la flota.
    method estaBienEquipada(){
//estaBienEquipada()`, es verdadero si la flota tiene al menos 3 rodados
//, y además, _todos_ los rodados de la flota pueden ir al menos a 100 km/h.
	return flota.size()>2 and flota.all({auto=>auto.velocidadMaxima()>99}) }
	
	method capacidadTotalEnColor(color){	
//capacidadTotalEnColor(color)`, la cantidad total de personas que puede transportar
// la flota afectada a la dependencia, considerando solamente los rodados del color indicado.
	return flota.filter({auto=>auto.color()==color}).sum({auto=>auto.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		return flota.max({auto=>auto.velocidadMaxima()}).color()
		}
	method capacidadFaltante(){
		// que es el resultado de restar, de la cantidad de empleados,
		// la capacidad sumada de los vehículos de la flota.
		return self.empleados() - flota.sum({auto=>auto.capacidad()})
		} 
	method esGrande(){
		// la condición es que la dependencia tenga al menos 40 empleados y 5 rodados.
		return self.empleados()>40 and flota.size()>4
	}
}

// recordamos: los colores con objetos vacíos, no como String
object azul {}
object rojo {}
object verde {}
object blanco{}
object beige{}
object negro{}

class Pedidos{
	var property laDistanciaARecorrer
	var property tiempoMaximo=10
	var property pasajeros
	var property coloresIncompatibles=#{}
	method velocidadRequerida(){return self.laDistanciaARecorrer()/self.tiempoMaximo()}
	method puedeSatisfacer(auto){
		return (auto.velocidadMaxima()> 10+self.velocidadRequerida())and (auto.capacidad()>=self.pasajeros()) and not
		coloresIncompatibles.any({c=>c==auto.color()})
	}
	method acelerar(){
		 self.tiempoMaximo(self.tiempoMaximo-1)
		
		
	}
		// disminuye en uno el tiempo máximo (p.ej. lo hace pasar de 8 horas a 7)
	method relajar(){
		var uno=self.tiempoMaximo()
		
		
			//` que lo aumenta en uno (p.ej. lo hace pasar de 8 horas a 9).
	
	}
}



