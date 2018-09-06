object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var haberes=0
	
	//devuelve el sueldo
	method sueldo() { return sueldo }
	
	//modifica el sueldo por otro que se ingresa
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method cobrarSueldo(){
		haberes+=self.sueldo()
	}
}

object baigorria {
	
	var cantidadEmpanadasVendidas = 0
	var montoPorEmpanada = 15
	var haberes=0
	
	//guarda la cantidad de empanadas vendidas y las suma
	method venderEmpanada(cantidadEmpanadas) {
		cantidadEmpanadasVendidas += cantidadEmpanadas
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		haberes+=self.sueldo()
	}
	
	// falta contraer y pagar deuda
}


object galvan {
	
	var dinero = 300000
	
	//muestra el dinero con el que cuenta Galvan para pagarles a los empleados
	method dinero() { return dinero }
	
	
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
    }
}

/*
 * probar haciendo que Galván le pague a Baigorria. Se rompe. ¿Por qué?
 * 	Se rompe por que ambos empleados (baigorria y gimenez no entienden el mensaje pagarA(empleado)ya que no tienen el method  
 * ¿qué método o métodos hay que agregar, en qué objeto u objetos, para que Galván le pueda pagar el sueldo a cualquiera de los dos empleados?
 * agregar esos métodos con el siguiente criterio: Giménez cuando cobra el sueldo lo suma a un acumulador de todo lo que cobró, agregarle la capacidad de entender el mensaje totalCobrado(). Baigorria no hace nada.
 */
