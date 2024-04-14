import spa.*

object olivia {
	var gradoDeConcentracion = 6
	method recibeMasaje(){
		gradoDeConcentracion += 3
	}
	method estaDiscutiendo(){
		gradoDeConcentracion = 0.max(gradoDeConcentracion - 1)
	}
	method gradoDeConcentracion(){
		return gradoDeConcentracion
	}
	method seDaUnBanioDeVapor(){
	}
}

object bruno {
	var estaFeliz = true 
	var tieneSed = false
	var pesoActual = 55000
	
	method recibeMasaje(){
		estaFeliz = true
	}
	method seDaUnBanioDeVapor(){
		pesoActual = 0.max(pesoActual - 500)
		tieneSed = true
	}
	method tomaAgua(){
		tieneSed = false
	}
	method comeFideos(){
		pesoActual += 250
		tieneSed = true
	}
	method corre(){
		pesoActual = 0.max(pesoActual - 300)
	}
	method miraElNoticiero(){
		estaFeliz = false
	}
	method estaPerfecto(){
		return estaFeliz and !tieneSed and pesoActual.between(50000, 70000)
	}
	method medioDiaEnCasa(){
		self.comeFideos()
		self.tomaAgua()
		self.miraElNoticiero()
	}
}

object ramiro {
	var nivelDeContracturacion = 0
	var tieneLaPielGrasosa = true
	
	method recibeMasaje(){
		nivelDeContracturacion = 0.max(nivelDeContracturacion - 2)
	}
	method seDaUnBanioDeVapor(){
		tieneLaPielGrasosa = false
	}
	method comeBigMac(){
		tieneLaPielGrasosa = true
	}
	method bajaALaFosa(){
		tieneLaPielGrasosa = true
		nivelDeContracturacion += 1
	}
	method juegaAlPaddle(){
		nivelDeContracturacion += 3
	}
	method diaDeTrabajo(){
		self.bajaALaFosa()
		self.comeBigMac()
		self.bajaALaFosa()
	}
}
