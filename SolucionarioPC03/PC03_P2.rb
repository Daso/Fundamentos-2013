=begin
Una empresa desea una aplicación que permita a los clientes 
calcular el precio al que pueden vender sus terrenos. 
El sistema deberá calcular tres aspectos para el cliente. El primero de ellos
es el precio por metro cuadrado según el distrito:

San Borja   US$150
Barranco    US$180
San Isidro  US$200

EL segundo aspecto es el cálculo de los metros cuadrados del terreno según los metros
de frente y los metros de fondo del terreno. 

Finalmente se calculará el precio total del terreno. 

Desarrollar los subprogramas.

=end

def metro_cuadrado(distrito)
 case distrito
   when "San Isidro"
    return 200.0
   when "Barranco"
    return 180.0
   else
    return 150.0
 end
end

def metros_cuadrados(frente, fondo)
  return frente * fondo
end

def precio_total(distrito, frente, fondo)
  return metros_cuadrados(frente, fondo) * metro_cuadrado(distrito)
end

#--- zona de test ----

def test_metro_cuadrado
    print validate(200.0, metro_cuadrado("San Isidro"))
    print validate(150.0, metro_cuadrado("San Borja"))
    print validate(180.0, metro_cuadrado("Barranco"))
end

def test_metros_cuadrados
    print validate(2000.0, metros_cuadrados(100, 20))
    print validate(1080.0, metros_cuadrados(90, 12))
end

def test_precio_total
    print validate(320000, precio_total("San Isidro", 80, 20))
    print validate(288000, precio_total("Barranco", 40, 40))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_metro_cuadrado
  puts " "
  test_metros_cuadrados
  puts " "
  test_precio_total
end
test