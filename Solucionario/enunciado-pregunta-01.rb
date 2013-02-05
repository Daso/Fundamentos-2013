
def soles_a_dolares(monto)
	(monto / 2.55).round(2)
end

def dolares_a_soles(monto)
	(monto * 2.55).round(2)
end

puts "Ingrese tipo de cambio (d / s)"
opcion = gets.chomp
puts "Ingrese monto"
monto = gets.chomp.to_f
if(opcion == 'd')
  puts dolares_a_soles(monto)
else
  puts soles_a_dolares(monto)
end

#--- zona de test ----

def test_soles_a_dolares
    print validate(100.00, soles_a_dolares(255.00)) 
    print validate(1000.00, soles_a_dolares(2550.00)) 
end

def test_dolares_a_soles
    print validate(255.00, dolares_a_soles(100.00)) 
    print validate(2550.00, dolares_a_soles(1000.00)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_soles_a_dolares
  test_dolares_a_soles
  puts " "
end
test