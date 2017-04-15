 La compañía de seguros “Te auxilia” está definiendo una nueva forma de cálculo para sus seguros obligatorios para autos.

Según esta nueva definición, el importe del seguro obligatorio autos depende del modelo del coche, de la antigüedad del coche y de la calificación que se le da al conductor según su historial de manejo. 

Existen tres modelos de autos: Sedán, deportivo y SUV. 

Para calcular el importe de la prima se utiliza el siguiente cuadro:


Modelo	  Antigüedad	                            Precio (US$)
Sedán	Menor a 3 años	                          250.00
	    Mayor o igual a 3 años y menor de 7 años	400.50
	    Mayor o igual a 7 años	                  630.50
Deportivo	
      Menor a 3 años		                        350.00
	    Mayor o igual a 3 años y menor de 7 años.	450.50
	    Mayor o igual a 7 años	                  730.50
SUV	
      Menor a 3 años	                           650.00
	    Mayor o igual a 3 años	                    840.50


La calificación que se da al conductor tiene cuatro valores: A, B, C y D. Si el conductor tiene una calificación de A, el precio de la prima se mantiene. Si el conductor tiene una calificación de B el precio de la prima se incrementa en 20%. Si el conductor tiene una calificación de C el precio de la prima se incrementa un 25%. Finalmente si el conductor tiene una calificación de D el precio de la prima se incrementa en 40%.

Además, en cualquier caso, hay que considerar que si el conductor tiene menos de 2 años el permiso de conducir, el precio se incrementará un 10% adicional. 

Se pide desarrollar un programa que realice lo siguiente:

1.	Obtener el precio del seguro según el modelo y la antigüedad.
2.	Obtener el porcentaje de incremento sobre el precio según la calificación del conductor.
3.	Obtener el precio total a pagar por el seguro.

#encoding:UTF-8
def obtenerPrecioModeloAntiguedad(modelo,antiguedad)

end

def obtenerPorcentajeCalificacion(calificacion)

end

def calcularTotal(modelo,antiguedad,calificacion,tiempoPermiso)

end

#--- zona de test ----

def test_obtenerPrecioModeloAntiguedad   
    	print validate(250.00, obtenerPrecioModeloAntiguedad("Sedan",2))
    	print validate(400.50, obtenerPrecioModeloAntiguedad("Sedan",4))
    	print validate(630.50, obtenerPrecioModeloAntiguedad("Sedan",9))
    	print validate(350.00, obtenerPrecioModeloAntiguedad("Deportivo",1))
    	print validate(450.50, obtenerPrecioModeloAntiguedad("Deportivo",3))
    	print validate(730.50, obtenerPrecioModeloAntiguedad("Deportivo",7))
    	print validate(650.00, obtenerPrecioModeloAntiguedad("SUV",2))
    	print validate(840.50, obtenerPrecioModeloAntiguedad("SUV",5))
    	print validate(0.00, obtenerPrecioModeloAntiguedad("Camioneta",5))
end

def test_obtenerPorcentajeCalificacion
    	print validate(0.00, obtenerPorcentajeCalificacion("A")) 
    	print validate(0.20, obtenerPorcentajeCalificacion("B")) 
    	print validate(0.25, obtenerPorcentajeCalificacion("C")) 
    	print validate(0.40, obtenerPorcentajeCalificacion("D")) 
end

def test_calcularTotal
   	print validate(250.00, calcularTotal("Sedan",2,"A",5))
   	print validate(440.55, calcularTotal("Sedan",4,"A",1))
   	print validate(420.00, calcularTotal("Deportivo",1,"B",3))
   	print validate(1004.44, calcularTotal("Deportivo",7,"C",1))
   	print validate(1294.37, calcularTotal("SUV",5,"D",1))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtenerPrecioModeloAntiguedad
  puts " "
  test_obtenerPorcentajeCalificacion
  puts " "
  test_calcularTotal
  puts " "
end
test
