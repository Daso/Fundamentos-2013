=begin
Ejercicio 07: Estimar el número de páginas 
de un texto que puede almacenarse en la memoria 
de un computador, considerando un promedio de 300 
palabras por página y 10 caracteres por palabra. 
Asumir que un carácter ocupa un byte. El tamaño 
de la memoria del computador debe ingresarse 
expresado en Kbytes. Tomar en cuenta que 
1Kbyte = 1024 bytes
=end
PALABRAS_PAGINA = 300
CARACTERES_PALABRA = 10
KBYTE = 1024
def paginas(memoria)
  total_bytes = PALABRAS_PAGINA * CARACTERES_PALABRA
  kbytes_totales = total_bytes / KBYTE 
  return memoria / kbytes_totales
end
#--- zona de test ----
def test_determinarcuota
    print validate(2, paginas(5))
    print validate(10, paginas(20))
    print validate(500, paginas(1000))
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
