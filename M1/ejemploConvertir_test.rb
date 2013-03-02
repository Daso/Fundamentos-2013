# Sabiendo que para convertir grados centígrados
# a Farenheit se debe multiplicar por 9/5 y se le 
# debe sumar 32 desarrollar un programa que realice
# el cálculo

def convertir(centigrados)
	respuesta = (centigrados * 9.0 / 5.0) + 32.0
end
#--- zona de test ----

def test_convertir
    print validate(98.6, convertir(37.0))
    print validate(203.0, convertir(95.0))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_convertir
  puts " "
end
test