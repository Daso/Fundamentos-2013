def promedio(a, b, c)
 return "El promedio es: " + (((a + b + c)/3).round(2)).to_s
end

#--- zona de test ----
def test_determinarcuota
    print validate("El promedio es: 16.0", promedio(16.0, 16.0, 16.0))
	print validate("El promedio es: 11.67", promedio(14.0, 12.0, 9.0))
	print validate("El promedio es: 18.0", promedio(19.0, 22.0, 13.0))
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
