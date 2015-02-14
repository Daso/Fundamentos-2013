#encoding:utf-8
=begin
  Código de Barras

En una empresa necesita identificar los productos que comercia mediante codigo de barras.

Este código le permite identificar en que parte del almacen se encuentra cada uno de los productos. Para lo cual utilizamos el siguiente formato: 

AC1123454A

Los tres primeros caracteres (AC1) identifican en que almacen se encuentar, los siguientes 3 (123) en que fila se encuentran, los siguientes 2 (45) en que columna. Y por ultimo los dos últimos 4A (en que anaquel),

Se le pide desarrollar los siguientes subprogramas:

- Un subprograma que me permita obtener cualquiera de los códigos basados en el indentificador, por ejemplo “Fila” devuelve “123”, “Anaquel” devuelve “4A”

- Un subprograma que me permita definir la ruta que debo seguir para llegar al producto. Por ejemplo con el código “AC1123454A” deberia devolver la siguiente cadena:
“Almacen: AC1, Fila: 123, Columna: 45, Anaquel: 4A”

- Un subprograma que permita validar si es que un código es válido, considerando que sólo existen 2 almacenes (AC1, AC2), 125 Filas (001 a 125), 99 Columnas (01 99), Anaquel (Cualquier valor de digitos)

=end
end
def obtenerCodigo(codigo,seccion)
  case seccion
    when "Anaquel"
     return codigo[8..9]
    when "Columna"
     return codigo[6..7]
    when "Fila"
      return codigo[3..5]
    else
      return codigo[0..2]
  end    
end
	
def obtenerRuta(codigo)
    return "Almacen: " + codigo[0..2] + ", Fila: "+ codigo[3..5] +", Columna: " + codigo[6..7] + ", Anaquel: " + codigo[8..9]
end

def validarCodigos(codigos)
  arreglo = []
  for i in 0...codigos.size
    verdad = true
    if codigos[i][0..2] != "AC1" && codigos[i][0..2] != "AC2"
     verdad = false
    end
    if codigos[i][3..5].to_i < 1 || codigos[i][3..5].to_i > 125
      verdad = false
    end
    if codigos[i][6..7].to_i < 1 || codigos[i][6..7].to_i > 99
      verdad = false
    end
    arreglo.push(verdad)       
  end  
  return arreglo
end
    

#----------Zona de Test------------------

def test_obtenerCodigo
    print validate("4A", obtenerCodigo("AC1123454A","Anaquel"))
    print validate("45", obtenerCodigo("AC1123454A","Columna"))
    print validate("123", obtenerCodigo("AC1123454A","Fila"))
    print validate("AC1", obtenerCodigo("AC1123454A","Almacen"))

end
    
def test_obtenerRuta
  print validate("Almacen: AC1, Fila: 123, Columna: 45, Anaquel: 4A", obtenerRuta("AC1123454A"))
  print validate("Almacen: AC2, Fila: 005, Columna: 12, Anaquel: 1A", obtenerRuta("AC2005121A"))
  print validate("Almacen: AC1, Fila: 001, Columna: 01, Anaquel: 2B", obtenerRuta("AC1001012B"))
end

def test_validarCodigos
  print validate([true,false,true], validarCodigos(["AC1123454A","AC3005121A","AC1001012B"]))
  print validate([false,false,false], validarCodigos(["AC3005121A","AC1500904A","AC2100002C"]))
  print validate([true,true,true], validarCodigos(["AC1123454A","AC1001012B","AC2045453C"]))
end
    
#----------------zona de test-----------------


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtenerCodigo
  puts " "
  test_obtenerRuta
  puts " "  
  test_validarCodigos
  puts " "
end

test
