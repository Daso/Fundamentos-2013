=begin   
Cifrado

El cifrado por desplazamiento, es una de las técnicas de codificación de textos más simples y usadas. Es un tipo de cifrado por sustitución en el que una letra en el texto original es reemplazada por otra letra que se encuentra un número fijo de posiciones más adelante en el alfabeto. 

Por ejemplo, con un desplazamiento de 3 posiciones, la A sería sustituida por la D (situada 3 lugares a la derecha de la A), la B sería reemplazada por la E, etc. Se supone que el alfabeto es circular de modo que, a todos los efectos, a continuación de la Z comienzan de nuevo las letras A, B, C, etc.

Se propone que programe los siguientes subprogramas:

1.  Subprograma que reciba una letra y que devuelva la letra que corresponda a aplicar una determinada posición de desplazamiento.
2.  Subprograma que reciba el texto a cifrar y devuelva como resultado el texto cifrado.

Debe tener en cuenta que sólo se codifican los caracteres correspondientes a las letras del alfabeto, el resto de caracteres (espacios en blanco, signos de puntuación, etc) permanecerán inalterados.

Ejemplo: Si el texto a codificar es: “UN TEXTO” y la clave es 3 resultará “XQ WHAWR”

=end

def obtenerLetraDesplazada(abecedario,letra,desplazamiento)
	for i in 0...abecedario.size
    if abecedario[i] == letra
      if (i + desplazamiento) < abecedario.size
        return abecedario[i + desplazamiento]   
      else
        return abecedario[(i + desplazamiento) - abecedario.size]
      end 
    end
  end
  return letra
end
    
def cifrado(texto,desplazamiento,abecedario)
  cadena = ""
  for i in 0...texto.size
    cadena += obtenerLetraDesplazada(abecedario,texto[i],desplazamiento)
  end
  cadena
end

#----------Zona de Test------------------

def test_obtenerLetraDesplazada
  print validate("X", obtenerLetraDesplazada(@abecedario,"U",3))
  print validate("Q", obtenerLetraDesplazada(@abecedario,"N",3))
  print validate("", obtenerLetraDesplazada(@abecedario,"",3))
  print validate("W", obtenerLetraDesplazada(@abecedario,"T",3))
  print validate("H", obtenerLetraDesplazada(@abecedario,"E",3))
  print validate("A", obtenerLetraDesplazada(@abecedario,"X",3))
  print validate("W", obtenerLetraDesplazada(@abecedario,"T",3))
  print validate("R", obtenerLetraDesplazada(@abecedario,"O",3))
  
  print validate("B", obtenerLetraDesplazada(@abecedario,"Z",2))
  print validate("G", obtenerLetraDesplazada(@abecedario,"E",2))
  print validate("V", obtenerLetraDesplazada(@abecedario,"T",2))
  print validate("C", obtenerLetraDesplazada(@abecedario,"A",2))
  
  print validate("C", obtenerLetraDesplazada(@abecedario,"Y",4))
  print validate("E", obtenerLetraDesplazada(@abecedario,"A",4))
  print validate("", obtenerLetraDesplazada(@abecedario,"",4))
  print validate("I", obtenerLetraDesplazada(@abecedario,"E",4))
  print validate("W", obtenerLetraDesplazada(@abecedario,"S",4))
  print validate("X", obtenerLetraDesplazada(@abecedario,"T",4))
  print validate("E", obtenerLetraDesplazada(@abecedario,"A",4))
end
    
def test_cifrado
	print validate("XQ WHAWR", cifrado("UN TEXTO",3,@abecedario))
  print validate("BGVC", cifrado("ZETA",2,@abecedario))
	print validate("CE IWXE", cifrado("YA ESTA",4,@abecedario))
end

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	@abecedario = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
		
	puts "Test de prueba del programa"
	puts "---------------------------"
	test_obtenerLetraDesplazada
	puts " "
	test_cifrado
	puts " "
end
test
