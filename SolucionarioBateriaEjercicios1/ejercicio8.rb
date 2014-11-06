=begin Ejercicio 08: Calcule la cantidad adeudada  
por un cliente de una compañía, considerando que 
la deuda actual es 15%  más que la anterior. 
Tiene como dato la deuda anterior.
=end
def deuda(deuda_anterior)  
  return (deuda_anterior * 1.15).round(2)
end

#--- zona de test ----
def test_determinarcuota
    print validate(115.0, deuda(100))
    print validate(2670.3, deuda(2322))
	print validate(3671.95, deuda(3193))
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
