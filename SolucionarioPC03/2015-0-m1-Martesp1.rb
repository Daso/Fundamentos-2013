#Pregunta 1
=begin
  
Un jugador tira un dado 7 veces. Con esos 7 valores 
obtenidos se forma un número, en el cual el primer 
digito (empezando de izquierda a derecha) corresponde 
al valor obtenido al tirar el dado por primera vez, el 
segundo digito corresponde al valor obtenido en  el 
segundo lanzamiento de dados y así sucesivamente:

Se pide determinar lo siguiente: 

a) Determinar cuantas veces salio un número determinado 
en los 7 lanzamientos realizados.
b) Otro jugador decide lanzar los dados 7 veces también.
Desarrollar un programa que determine que jugador obtuvo 
un mayor lanzando los dados (el mayor valor se determina
 mediante la suma de los valores de cada lanzamiento de 
 dados). En caso empaten, el valor de respuesta debería 
 de ser “empate”.

  
=end
def numeroVeces(numero, valor)
  contador = 0
  7.times do
    digito = numero % 10
    if digito == valor
      contador += 1
    end
    numero = numero / 10
  end
  contador
=begin
  contador = 0
  while numero > 0
    digito = numero % 10
    if digito == valor
      contador += 1
    end
    numero = numero / 10
  end
  contador
=end
end

def mayorValor(jugador1, jugador2)
  suma_jugador1 = 0
  suma_jugador2 = 0
	7.times do 
    suma_jugador1 += jugador1 % 10
    suma_jugador2 += jugador2 % 10
    jugador1 /= 10
    jugador2 /= 10
  end
  if suma_jugador1 > suma_jugador2
    "jugador1"
  elsif suma_jugador1 < suma_jugador2
    "jugador2"
  else
    "empate"
  end
    
end

#--- zona del programa principal ----

#--- zona de test ----

def test_masVeces
  print validate(3, numeroVeces(6165365, 6))
  print validate(2, numeroVeces(6125365, 5))    
  print validate(1, numeroVeces(6125365, 3))    
	print validate(0, numeroVeces(6125365, 4))    
end

def test_probabilidades
    print validate("jugador1", mayorValor(6165356,1111231))
	print validate("jugador2", mayorValor(1111231,6165356))
    print validate("empate", mayorValor(6165365,6165356))
	print validate("empate", mayorValor(1111111,1111111))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_masVeces
  test_probabilidades
  puts " "
end
test
