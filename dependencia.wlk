import rodados.*

class Dependencia {
    const property flota = []
    var property empleados 
    
    method agregarDeFlota(rodado) = flota.add(rodado)
    method quitarDeFlota(rodado) = flota.remove(rodado)
    method pesoTotal() = flota.sum({r=>r.peso()})
    method estaBienEquipada() = 
    self.tieneMasDe(3) and self.todosAlMenosA(100)

    method tieneMasDe(cantDeRodados)= flota.size() >= cantDeRodados
    method todosAlMenosA(velociad) = flota.all({v=>v.velocidadMaxima() > velociad})
    method capacidadTotalEnColor(color) = self.rodadosDelColor(color).sum({r=>r.capacidad()})
    method rodadosDelColor(color) =   flota.filter({r=>r.color() == color})
    method colorDelodadoMasRapido() = self.rodadoMasRapido().color()
    method rodadoMasRapido() = flota.max({r=>r.velocidadMaxima()})
    method capacidadfaltante() = (empleados - self.capacidadSumadaDelaFlota()).max(0)
    method capacidadSumadaDelaFlota() = flota.sum({r=>r.capacidad()})
    method esGrande() = empleados >= 40 && self.tieneMasDe(5)
     

}