=begin
Una empresa de reparación de motos está promocionando los nuevos paquetes de mantenimiento para sus clientes.

Mantenimiento Preventivo

Modelo	Costo
70cc	5.50
150cc	7.90
250cc	10.00
300cc	13.90

Adicionalmente el cliente puede solicitar que se haga un scan electrónico y para ello se le agregan las siguientes tarifas:

Modelo	Adicional
70cc	2.50
150cc	3.90
250cc	5.00
300cc	7.30

Finalmente, si es la quinta vez que el cliente viene por el servicio entonces tiene un descuento de 15% sobre el valor final. Para cualquier otro modelo no contemplado los programas devolverán 0



Se le solicita lo siguiente:
1.	Mostrar el monto a pagar por el servicio de mantenimiento preventivo.
2.	Mostrar el monto a pagar por el servicio de scan.
3.	Calcular el valor final a pagar tomando en cuenta las consideraciones de precio base, scan y descuento adicional por ser cliente frecuente si vino cinco veces o más. 

=end


def calcularMantenimiento(modelo)
	case modelo
	when "70cc"
	  5.50
	when "150cc"
	  7.90
	when "250cc"
	  10.00
	when "300cc"
	  13.90
	else
	  0.0
	end
end

def calcularScan(modelo)
	case modelo
	when "70cc"
	  2.50
	when "150cc"
	  3.90
	when "250cc"
	  5.00
	when "300cc"
	  7.30
	else
	  0.0
	end
end

def calcularTotalPagar(modelo, visitas)
  mantenimiento = calcularMantenimiento(modelo)
  precio_scan = calcularScan(modelo)
  total = mantenimiento + precio_scan
  if visitas >= 5
    total = total * 0.85
  end
  total
end

#--- zona de test ----

def test_calcularMantenimiento
    print validate(5.50, calcularMantenimiento("70cc")) 
	print validate(7.90, calcularMantenimiento("150cc")) 
	print validate(10.00, calcularMantenimiento("250cc")) 
	print validate(13.90, calcularMantenimiento("300cc")) 
	print validate(0.00, calcularMantenimiento("Camion")) 
end

def test_calcularScan
    print validate(2.50, calcularScan("70cc")) 
	print validate(3.90, calcularScan("150cc")) 
	print validate(5.00, calcularScan("250cc")) 
	print validate(7.30, calcularScan("300cc")) 
	print validate(0.00, calcularScan("Moto")) 
end

def test_calcularTotalPagar
	print validate(8.00, calcularTotalPagar("70cc",3))
	print validate(11.8, calcularTotalPagar("150cc",4))
	print validate(12.75, calcularTotalPagar("250cc",6))
	print validate(18.02, calcularTotalPagar("300cc",5))
	print validate(0.0, calcularTotalPagar("Camion",1))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularMantenimiento
  puts " "
  test_calcularScan
  puts " "
  test_calcularTotalPagar
  puts " "
  
end

test
