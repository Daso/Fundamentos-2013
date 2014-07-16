=begin
Pregunta 1 
Una escuela de cocina acaba de finalizar su 
participación en la feria gastronómica para 
futuros cheffs. Durante el evento realizo 
varias preinscripciones. Hoy si el alumno 
quiere inscribirse en la escuela y muestra 
el cupón de descuento obtenido durante la 
feria entonces tendrá un beneficio sobre el 
precio regula. A continuación se muestra la 
las carreras así como los porcentajes de descuento 
dependiendo de la misma. Desarrollar un programa 
que permita determinar el precio a pagar por el 
estudiante.

En el caso de Cocina depende de la duración
siendo 3, 6 y 12 meses con precios de 5,000
8,000 y 14,000 respectivamente

En el caso de Repostería depende de la duración
siendo 3, 6 y 12 meses con precios de 4,000
7,000 y 12,000 respectivamente

En el caso de Barman depende de la duración
siendo 3, 6 y 12 meses con precios de 3,000
5,000 y 8,500 respectivamente 
 
=end
def calcularPrecioCurso(carrera, duracion)
  if carrera == "Cocina"
	if duracion == 3
	  return 5000.00
	elsif duracion == 6
	  return 8000.00
	else
	  return 14000.00
	end
  elsif carrera == "Reposteria"
    if duracion == 3
	  return 4000.00
	elsif duracion == 6
	  return 7000.00
	else
	  return 12000.00
	end
  else
    if duracion == 3
	  return 3000.00
	elsif duracion == 6
	  return 5000.00
	else
	  return 8500.00
	end
  end
  
end

def calcularDescuento(carrera)
  if carrera == "Cocina"
	return 0.05
  elsif carrera == "Reposteria"
    return 0.07
  else
    return 0.03
  end
end

def calcularTotal(carrera, duracion, evento)
  precio = calcularPrecioCurso(carrera, duracion)
  if evento
	descuento = calcularDescuento(carrera)
	precio = precio - (precio * descuento)	
  end
  return precio
end

#--- zona de test ----

def test_calcularPrecioCurso
    print validate(5000.00, calcularPrecioCurso("Cocina",3)) 
	print validate(4000.00, calcularPrecioCurso("Reposteria",3)) 
	print validate(8000.00, calcularPrecioCurso("Cocina",6)) 
	print validate(12000.00, calcularPrecioCurso("Reposteria",12)) 
	print validate(14000.00, calcularPrecioCurso("Cocina",12)) 
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
