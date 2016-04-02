=begin 
Esta semana se viene desarrollando en Lima la feria gastronómica Mistura. Debido a que se prevé una mayor afluencia de público en el último fin de semana de la feria, los distintos stands que estarán participando han decidido realizar una serie de concursos con el fin de que el público pase la mayor cantidad de tiempo en sus stands. De esta manera han desarrollado un juego de tragamonedas de cinco filas para tablets (donde cada fila es un número del 0 al 9). 

El resultado de la jugada es procesado por un servidor que maneja la cantidad de premios. Al servidor no se le envían los 5 números, sino que se envía un solo número de 5 dígitos que contiene cada una de las filas.

Si el número de cinco cifras contiene un cero (0), esta cifra debe eliminarse. Por ejemplo: 16802. El número resultante que entraría para el cálculo de los premios sería 1682.

Para la distribución de los premios se ha definido la siguiente lógica de juego:

•	Si la suma de los dígitos del número es mayor a 20, se le obsequia una “casaca”.
•	Si la suma de los dígitos del número está entre 10 y 20, se le obsequia una “polera”.
•	Si la suma de los dígitos del número está entre 1 y 9, se le obsequia una “taza”.

Se solicita lo siguiente:

1.	Desarrollar un subprograma que dado un número de 5 cifras, determine si el número contiene el dígito cero, si lo contiene, debe devolver el número sin ese dígito.
2.	Desarrollar un subprograma que dado un número, retorne la suma de sus dígitos.
3.	Desarrollar un subprograma que dado un número determine qué premio se debe de entregar (considerar que el número puede contener el dígito cero, por lo cual primero debe ser eliminado).

=end 
def numeroSinCero(numero)
  cadena = ""
  while numero > 0
    digito = numero % 10 	
	numero = numero / 10 
	if digito != 0
	  cadena = digito.to_s + cadena
	end 
  end   
  cadena.to_i
end

def sumaDigitos(numero)
  suma_digitos = 0
  while numero > 0
    suma_digitos = suma_digitos + numero % 10 
	numero = numero / 10 
  end  
  suma_digitos
end

def determinarPremio(numero)
  puntaje = sumaDigitos(numero)
  case puntaje
  when 1..9
    "taza"
  when 10..20
    "polera"
  else
    "casaca"
  end   
end

#--- zona de test ----


def test_numeroSinCero
    print validate(13258, numeroSinCero(13258)) 
    print validate(1682, numeroSinCero(16802)) 
	print validate(1479, numeroSinCero(10479)) 
	print validate(14512, numeroSinCero(14512)) 
end


def test_sumaDigitos
    print validate(19, sumaDigitos(13258)) 
    print validate(17, sumaDigitos(1682)) 
	print validate(21, sumaDigitos(1479)) 
	print validate(13, sumaDigitos(14512)) 
end

def test_determinarPremio
    print validate("polera", determinarPremio(13258)) 
    print validate("casaca", determinarPremio(10479)) 
	print validate("taza", determinarPremio(10231)) 
	print validate("casaca", determinarPremio(65472))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_numeroSinCero
  test_sumaDigitos
  test_determinarPremio
  puts " "
end

test
