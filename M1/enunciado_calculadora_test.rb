def sumar(a, b)
  a + b
end

def restar(a, b)  
  a - b
end

def multiplicar(a, b)
 a * b
end

def dividir(a, b)
  if (b != 0)
    a / b
  else
    0
  end
end


#--- zona de test ----

def test_sumar
    print validate(16, sumar(10, 6))
    print validate(12, sumar(2, 10))
end

def test_restar
    print validate(2, restar(7, 5)) 
    print validate(-8, restar(12, 20))     
end

def test_multiplicar
    print validate(20, multiplicar(4, 5)) 
    print validate(18, multiplicar(6, 3))   
end

def test_dividir
    print validate(4, dividir(8, 2)) 
    print validate(5, dividir(15, 3)) 
    print validate(0, dividir(19, 0))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_sumar
  test_restar
  test_multiplicar
  test_dividir
  puts " "
end
test