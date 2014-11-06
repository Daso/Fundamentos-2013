=begin 
Ejercicio 09:   El personal de ventas de una empresa 
recibe S/.200.00 por semana más 9% de las ventas de 
esa semana. Si se tiene como dato las ventas de un 
vendedor en una semana calcule y muestre sus ganancias.
=end
PAGO_FIJO = 200.0
def ganancias(ventas)  
  return ((ventas * 0.09) + PAGO_FIJO).round(2)
end

#--- zona de test ----
def test_determinarcuota
    print validate(209.0, ganancias(100))
    print validate(241.04, ganancias(456))
	print validate(349.04, ganancias(1656))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarcuota
  puts " "
end
test
