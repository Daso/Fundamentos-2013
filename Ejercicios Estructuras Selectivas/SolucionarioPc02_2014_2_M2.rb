#encoding:UTF-8
=begin 
Pregunta 1 

Una conocida aerolínea ha comenzado con su programa de lealtad. Con tal finalidad esta promocionando sus tarjetas de socios de manera gratuita, las cuales vienen con una cantidad de millas base. 

Sin embargo la aerolínea considera 3 categorías, las cuales se acceden mediante la acumulación de millas al momento de viajar. Las categorías son:

- Base: Para los afiliados que hayan acumulado menos de 150,000 millas
- Premium: Para los afiliados que hayan acumulado igual o más de 150,000 millas y menos de 250,000 millas
- Elite: Para aquellos que hayan acumulado igual o más de 250,000 millas.

Adicionalmente, un cliente podrá comprar millas a la siguiente tarifa dependiendo de la categoría 

- 30 millas por cada dólar si esta en la categoría Base
- 50 millas por cada dólar si esta en la categoría Premium
- 90 millas por cada dólar si esta en la categoría Elite

Desarrollar un programa que indique lo siguiente:
-Dependiendo de la cantidad de millas, indicar que tipo de categoría tiene el cliente
-Desarrollar un programa que dado un monto determinado de dólares, cuantas millas podrá comprar el cliente. 
-Desarrollar un programa que permita a un cliente calcular cuantas millas le falta para subir a la siguiente categoría.

=end
def calcularCategoria(millas)
  case millas
    when 0..149999
     "Base"
    when 150000..249999
      "Premium"
    else
      "Elite"
  end
end

def calcularMillasComprar(categoria, monto)
  if categoria == "Base"
    monto * 30
  elsif categoria == "Premium"
    monto * 50
  else
    monto * 90
  end
end

def calcularSiguienteSegmento(tipo,cantidad)
  case tipo
    when "Base"
      150000 - cantidad
    when "Premium"
      250000 - cantidad
    else
      0
  end
end

#--- zona de test ----

def test_calcularCategoria
    print validate("Base", calcularCategoria(100))
	print validate("Premium", calcularCategoria(200000))
    print validate("Elite", calcularCategoria(260000))    
end

def test_calcularMillasComprar
    print validate(300, calcularMillasComprar("Base",10)) 
    print validate(500, calcularMillasComprar("Premium",10)) 
    print validate(900, calcularMillasComprar("Elite",10)) 
end

def test_calcularSiguienteSegmento
    print validate(150000, calcularSiguienteSegmento("Base",0)) 
    print validate(1000, calcularSiguienteSegmento("Premium",249000)) 
    print validate(0, calcularSiguienteSegmento("Elite",500000)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularCategoria
  test_calcularMillasComprar
  test_calcularSiguienteSegmento
  puts " "
end
test
