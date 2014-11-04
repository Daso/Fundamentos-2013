# programa
=begin
Desarrollar un programa que me permita 
ingresar el radio de un círculo 
y calcule el área de un circulo. 
=end

PI = 3.1416
def area(radio)
 return (radio * PI ** 2).round(2)
end

#--- zona de test ----
def test_determinarcuota
    print validate(98.70, area(10.0))
    print validate(251.68, area(25.5))
    print validate(350.37, area(35.5))
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

# fin 
