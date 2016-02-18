=begin
Se desea generar un algoritmo que reciba un numero de “n” dígitos y pueda realizar las siguientes evaluaciones:
1.	Promediar los dígitos del número y contar cuantos dígitos superan el promedio obtenido.
2.	Comparar la suma de los dígitos pares versus los dígitos impares e indicar quienes son los que ganan.
=end 

def ConteoYPromedio(numero)
  contador = 0.0
  acumulador = 0.0
  mayores_promedio = 0.0
  numero2 = numero 
  cantidad_mayores = 0
  while numero > 0
    contador += 1 
	acumulador = acumulador + numero % 10
	numero = numero / 10
  end 
  promedio = (acumulador / contador).round(2)
  while numero2 > 0
    if numero2 % 10 > promedio 
	   cantidad_mayores += 1 
	end 
    numero2 = numero2 / 10 
  end 
  cantidad_mayores
  
end

def QuienesGanan(numero)
  pares = 0
  impares = 0
  while numero > 0
    if (numero % 10) % 2 == 0  
	   pares += 1 
	else
	   impares += 1 
	end     
	numero = numero / 10
  end 
  if pares > impares
    "Pares"
  else
   "Impares"
  end 
end

#--- zona de test ----

def test_ConteoYPromedio
    print validate(5, ConteoYPromedio(5432456643237)) 
    print validate(12, ConteoYPromedio(64454638675432346636654)) 
    print validate(10, ConteoYPromedio(7643993542359998762)) 
    print validate(3, ConteoYPromedio(124325523))
end

def test_QuienesGanan
    print validate("Pares", QuienesGanan(5432456643237))
    print validate("Pares", QuienesGanan(64454638675432346636654))
    print validate("Impares", QuienesGanan(7643993542359998762))
    print validate("Impares", QuienesGanan(124325523))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_ConteoYPromedio
  test_QuienesGanan
  puts " "
end

test
