=begin 
Ejercicio 10:  Con el valor del radio de un círculo, 
calcule el diámetro, la circunferencia y el área. 
Use el valor 3.14159 para la constante PI.

=end
PI = 3.14159
def diametro(radio) 
  return (radio * 2).round(2)
end

def circunferencia(radio)
  return (PI * 2 * radio).round(2)
end

def area(radio)
  return (PI * radio ** 2).round(2)
end

#--- zona de test ----
def test_diametro
    print validate(200.0, diametro(100))
    print validate(912.0, diametro(456))
	print validate(468.0, diametro(234))
end

def test_circunferencia
    print validate(628.32, circunferencia(100))
    print validate(2877.70, circunferencia(458))
	print validate(48801.46, circunferencia(7767))
end

def test_area
    print validate(31415.90, area(100))
    print validate(1444138.66, area(678))
	print validate(1009986.63, area(567))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_diametro
  puts " "
  test_circunferencia
  puts " "
  test_area
  puts " "
end
test
