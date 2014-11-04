#encoding : UTF-8
=begin
Desarrollar un programa que permita al usuario ingresar
 su nombre y edad y muestre el saludo 

Hola <NOMBRE>, tienes <EDAD> años.
=end
def saludo(nombre, edad)
 return "Hola "+ nombre + ", tienes " + edad.to_s + " años." 
end

#--- zona de test ----
def test_determinarcuota
    print validate("Hola Carlos, tienes 16 años.", saludo("Carlos", 16))
	print validate("Hola Sonia, tienes 22 años.", saludo("Sonia", 22))
	print validate("Hola Claudia, tienes 33 años.", saludo("Claudia", 33))
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
