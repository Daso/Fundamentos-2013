=begin
Una escuela de cocina acaba de finalizar su 
participación en la feria gastronómica para 
futuros chefs. Durante el evento realizo varias 
preinscripciones. Hoy si el alumno quiere 
inscribirse en la escuela y muestra el cupón 
de descuento obtenido durante la feria entonces 
tendrá un beneficio sobre el precio regular. 
A continuación se muestra la las carreras así como 
los porcentajes de descuento dependiendo de la misma. 
Desarrollar un programa que permita determinar el precio 
 pagar por el estudiante.
 
 Cocina 
 3 meses      	5000
 6 meses      	8000
 12 meses		14000
 Reposteria
 3 meses		4000
 6 meses		7000
 12 meses		12000
 Barman
 3 meses		3000
 6 meses		5000
 12 meses		8500
  

Descuento 
	Cocina 		5%
	Reposteria	7%
	Barman		3%
=end
def calcularPrecioCurso(carrera, duracion)
   case carrera
   when "Cocina"
   	 case duracion
   	 when 3
   	 	5000.0
   	 when 6
   	 	8000.0
   	 else
   	 	14000.0
   	 end
   when "Reposteria"
   	 case duracion
   	 when 3
   	 	4000.0
   	 when 6
   	 	7000.0
   	 else
   	 	12000.0
   	 end
   else
   	 case duracion
   	 when 3
   	 	3000.0
   	 when 6
   	 	5000.0
   	 else
   	 	8500.0
   	 end
   end  
end

def calcularDescuento(carrera)
   case carrera
   when "Cocina"
   	0.05
   when "Reposteria"
   	0.07
   else
   	0.03
   end
end

def calcularTotal(carrera, duracion, evento)
  precio = calcularPrecioCurso(carrera, duracion)
  if evento
    precio -= (precio * calcularDescuento(carrera))
  end
  precio.round(2)
end

#--- zona de test ----

def test_calcularPrecioCurso
    print validate(5000.00, calcularPrecioCurso("Cocina",3)) 
	print validate(4000.00, calcularPrecioCurso("Reposteria",3)) 
	print validate(8000.00, calcularPrecioCurso("Cocina",6)) 
	print validate(12000.00, calcularPrecioCurso("Reposteria",12)) 
	print validate(14000.00, calcularPrecioCurso("Cocina",12)) 
	print validate(8500.00, calcularPrecioCurso("Barman",12))
end

def test_calcularDescuento
    print validate(0.05, calcularDescuento("Cocina")) 
	print validate(0.07, calcularDescuento("Reposteria")) 
	print validate(0.03, calcularDescuento("Barman")) 
end

def test_calcularTotal
    print validate(6510.00, calcularTotal("Reposteria",6, true)) 
	print validate(14000.00, calcularTotal("Cocina",12, false)) 
	print validate(8500.00, calcularTotal("Barman",12, false)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularPrecioCurso
  test_calcularDescuento
  test_calcularTotal
  puts " "
end
test
  
