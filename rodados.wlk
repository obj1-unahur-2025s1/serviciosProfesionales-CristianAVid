class Corsa {
    var property color
    method capacidad() = 4
    method peso() = 1300
    method velocidadMaxima() = 150  
  
}

class Kuid {
    var property tanqueAdicional
    method capacidad() = if(tanqueAdicional) 3 else 4
    method peso() = 1200 + if(tanqueAdicional) 150 else 0
    method velocidadMaxima() = if(tanqueAdicional) 110 else 120    
    method color() = "Azul"
}

object trafic {
    var property tipoDeInterior = comodo
    var property motor = pulenta 
    method capacidad() = tipoDeInterior.capacidad()
    method peso() = 4000 + tipoDeInterior.peso() + motor.peso()
    method velocidadMaxima() = motor.velocidadMaxima()
    method color() = "Blanco"


  
}

class Especial {
    var property peso 
    var property capacidad
    var property velocidadMaxima
    var property color  
  
}
object comodo {
    method capacidad() = 5
    method peso() = 700 
  
}
object popular {
    method capacidad() = 12
    method peso() = 1000
  
}
object pulenta {
  method peso() = 800
  method velocidadMaxima() = 130  
}
object bataton {
  method peso() = 500
  method velocidadMaxima() = 80
  
}
