=begin
Una empresa de auto lavado está promocionando los nuevos paquetes de lavado para sus clientes fieles. Para esto ha promocionado las nuevas tarifas por el servicio de lavado:

Modelo    Precio
Sedan     5.50
Camioneta 7.90
4x4       10.00
Van       13.90

 
Adicionalmente el cliente puede solicitar que se haga un lavado interno y para ello se le agregan las siguientes tarifas:

Modelo    Adicional
Sedan     2.50
Camioneta 3.90
4x4       5.00
Van       7.30

Finalmente, si es la quinta vez que el cliente nos visita con el mismo vehículo entonces tiene un descuento de 15% sobre el valor final del servicio de lavado.

Se le solicita lo siguiente:
1.  Dado un modelo, mostrar el monto a pagar por el servicio de lavado básico.
2.  Dado un modelo, mostrar el monto a pagar por el servicio de lavado interno.
3.  Dado un modelo, poder calcular el valor final a pagar considerando si el cliente solicita el servicio d lavado interno y si es que se aplica el descuento por ser cliente frecuente. (se tendrá como input un valor boolean por si toma el servicio adicional o no y si tiene el descuento)
  

  
=end

def calcularValorLavado(modelo)
  case modelo
  when "Sedan"
    5.50
  when "Camioneta"
    7.90
  when "4x4"
    10.0
  when "Van"
    13.9
  else
    0.0
  end
end

def calcularValorServicioAdicional(modelo)
  case modelo
  when "Sedan"
    2.50
  when "Camioneta"
    3.90
  when "4x4"
    5.0
  when "Van"
    7.30
  else
    0.0
  end
end

def calcularValorTotalPagar(modelo, adicional, quintavisita)

  costo_base = calcularValorLavado(modelo)

  if adicional
    costo_base = costo_base +  calcularValorServicioAdicional(modelo)
  end

  if quintavisita
     costo_base = costo_base * 0.85
  end
  costo_base
end

#--- zona de test ----

def test_calcularValorLavado
    print validate(5.50, calcularValorLavado("Sedan"))
    print validate(10.00, calcularValorLavado("4x4"))
    print validate(13.90, calcularValorLavado("Van"))
    print validate(0.00, calcularValorLavado("Camion"))
end

def test_calcularValorServicioAdicional
    print validate(2.50, calcularValorServicioAdicional("Sedan"))
    print validate(3.90, calcularValorServicioAdicional("Camioneta"))
    print validate(5.00, calcularValorServicioAdicional("4x4"))
    print validate(0.00, calcularValorServicioAdicional("Moto"))
end

def test_calcularValorTotalPagar
    print validate(8.00, calcularValorTotalPagar("Sedan",true,false))
    print validate(8.50, calcularValorTotalPagar("4x4",false,true))
    print validate(18.02, calcularValorTotalPagar("Van",true,true))
    print validate(7.90, calcularValorTotalPagar("Camioneta",false,false))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularValorLavado
  test_calcularValorServicioAdicional
  test_calcularValorTotalPagar
  puts " "
 
end

test
