=begin

Un centro numérico es un número que separa una lista de números enteros (comenzando en 1) en dos grupos de números cuyas sumas son iguales. El primer centro numérico es el 6, el cual separa la lista (1 a 8) en los grupos: (1, 2, 3, 4, 5) y (7, 8) cuyas sumas son ambas iguales a 15. El segundo centro numérico es el 35, el cual separa la lista (1 a 49) en los grupos: (1 a 34) y (36 a 49) cuyas sumas son ambas iguales a 595. 

Se solicita lo siguiente:

1.	Subprograma que calcule la suma de los números enteros menores al número pasado como parámetro.
2.	Subprograma que determine si un número es un centro númerico. 

=end

def sumaMenores(numero)
  total = 0
	for i in 1...numero
    total += i
  end
  total
end

def esCentroNumerico(sumaMenores,numero)
  sumaMayores = 0
	while sumaMayores < sumaMenores
    numero += 1
    sumaMayores += numero 
  end
  if sumaMenores == sumaMayores
    true
  else
    false
  end
end

#--- zona del programa principal ----

#--- zona de test ----
def test_sumaMenores
    print validate(15,sumaMenores(6)) 
    print validate(595,sumaMenores(35)) 
    print validate(820, sumaMenores(41)) 
	print validate(20706, sumaMenores(204)) 
end

def test_esCentroNumerico
    print validate(true,esCentroNumerico(15,6)) 
    print validate(true,esCentroNumerico(595,35)) 
    print validate(false,esCentroNumerico(820,41)) 
	print validate(true,esCentroNumerico(20706,204)) 
	print validate(false,esCentroNumerico(34580,305)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_sumaMenores
  puts ""
  test_esCentroNumerico
  puts " "
end
test

