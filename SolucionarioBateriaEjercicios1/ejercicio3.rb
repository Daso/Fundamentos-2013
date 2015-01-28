# programa
=begin
Desarrollar un programa que me permita 
ingresar el radio de un círculo 
y calcule el área de un circulo. 
=end

PI = 3.1416
def area(radio)
 return (PI * radio ** 2).round(2)
end

def test_determinarcuota
    print validate(314.16, area(10.0))
    print validate(2042.83, area(25.5))
    print validate(3959.2, area(35.5))
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
