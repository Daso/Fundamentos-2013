=begin 
Pregunta 1 

Una empresa desea premiar a sus trabajadores por la cantidad de ventas realizadas y darles un bono de reconocimiento basado en los montos de ventas

Para ello se debe tener en cuenta el tipo de trabajador, el monto de las ventas y con ello se calcula el porcentaje del bono sobre la venta. 

Por ejemplo

El vendedor tipo Plata vende 1000 soles y su sueldo base es 500. En ese caso, por vender 1000 soles recibe un bono de 10% sobre sus ventas (100 soles) por lo tanto su sueldo final es la base de 500 y el bono de 100 haciendo un total de 600 soles. 


Tipo de Trabajador  Monto de venta  Bono sobre las ventas
Plata   Mayor a 1000 soles  10%
        Mayor a 5000 soles  15%
Oro     Mayor a 2500 soles  20%
        Mayor a 5000 soles  25%
Platino Mayor a 2500 soles  25%
        Mayor a 5000 soles  30%

*Montos menores no tendrán bono. 

Desarrollar un programa que indique el porcentaje de bono sobre las ventas. 
Desarrollar un programa que indique el monto ganado por el bono. 
Desarrollar un programa que permita calcular el sueldo total del trabajador.

=end
#encoding:UTF-8
def bono_sobre_ventas(tipo_trabajador, monto_ventas)
	if tipo_trabajador == "Plata"
    if monto_ventas > 1000 && monto_ventas < 5000
      0.1
    elsif monto_ventas > 5000
      0.15
    else
      0
    end
  elsif tipo_trabajador == "Oro"
    if monto_ventas > 2500 && monto_ventas < 5000
      0.2
    elsif monto_ventas > 5000
      0.25
    else
      0
    end
  else
    if monto_ventas > 2500 && monto_ventas < 5000
      0.25
    elsif monto_ventas > 5000
      0.30
    else
      0
    end
  end
end

def monto_ganado(tipo_trabajador, monto_ventas)
	porcentaje = bono_sobre_ventas(tipo_trabajador, monto_ventas)
  monto_ventas * porcentaje
end

def sueldo_total(tipo_trabajador, monto_ventas, sueldo_base)
	sueldo_base + monto_ganado(tipo_trabajador, monto_ventas)
end
#--- zona de test ----

def validate(expected, value)    
  expected == value ? "." : "F"
end

def test_bono_sobre_ventas
    print validate(0,bono_sobre_ventas("Plata",300))
    print validate(0.1,bono_sobre_ventas("Plata",3700))
    print validate(0.25,bono_sobre_ventas("Oro",5096))    
    print validate(0,bono_sobre_ventas("Oro",87))
    print validate(0,bono_sobre_ventas("Platino",1500))    
    print validate(0.30,bono_sobre_ventas("Platino",5500))
end

def test_monto_ganado
    print validate(0,monto_ganado("Plata",300))
    print validate(370.0,monto_ganado("Plata",3700))
    print validate(1274.0,monto_ganado("Oro",5096))    
    print validate(0,monto_ganado("Oro",87))
    print validate(0,monto_ganado("Platino",1500))    
    print validate(1650.0,monto_ganado("Platino",5500))    
end   

def test_sueldo_total
    print validate(1000.0,sueldo_total("Plata",300,1000.0))
    print validate(4274.0,sueldo_total("Oro",5096, 3000.0))    
    print validate(4500.0,sueldo_total("Oro",87,4500.0))
    print validate(3650.0,sueldo_total("Platino",5500, 2000))
end
20
def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_bono_sobre_ventas
  test_monto_ganado
  test_sueldo_total
  puts " "
end
test
