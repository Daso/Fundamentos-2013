#encoding:utf-8
=begin
Elecciones municipales y regionales

Este año se realizarán las elecciones municipales y regionales 
en todo el país en el mes de octubre. Se le ha encargado 
elaborar el programa que controlará el conteo automático de 
las mesas de votación.

Para este proceso se tendrá el resultado de cada mesa de 
sufragio de la siguiente manera:

Nro Mesa	238512	Cantidad votantes 350
Cantidad votos blancos 11
Cantidad de votos nulos	5

Agrupación Política	Nombre del candidato	Cantidad votos válidos
PPS					Salvador Seresi					51
PPC					Juan Ruiz						54
UV					Lourdes Villaran				56
SN					Raul Castano					53
APP					Mario Acua						55
VP					German Tay						65
		Total votos válidos	334

a)	Elaborar un subprograma para determinar si los votos 
emitidos en la mesa, son los permitidos. Para esto, se 
recibirá como parámetro un array con los votos válidos por 
cada candidato, además la cantidad de votos en blanco, 
la cantidad de votos nulos y el total de votantes de la mesa. 
Debe retornar “true” si cumple o “false” si no cumple
b)	Elaborar un subprograma que reciba como parámetro un 
vector con los nombre de los candidatos y otro con los votos 
válidos de cada candidato. Se debe determinar ¿quién es la 
persona que ganó en esa mesa? (No considere los empates)
c)	Elaborar un subprograma que reciba como parámetros la 
cantidad de votos en blanco, la cantidad de votos nulos y 
el total de votantes por mesa. Se debe determinar el 
porcentaje de estos votos en la mesa.

=end
def pruebaMesa(votosValidos,blanco,nulos,total)
  suma_validos = 0
  for i in 0...votosValidos.size
    suma_validos += votosValidos[i]
  end  
  if suma_validos + blanco + nulos == total
    return true
  else
    return false
  end
end


def encuentraGanador(nombres,votos)
  indice = 0
  mas_votos = votos[0]
  for i in 0...votos.size
    if votos[i] > mas_votos
	  mas_votos = votos[i]
	  indice = i
	end
  end  
  return nombres[indice]
end

def encuentraMalos(blanco,nulos,total)
  return ((blanco + nulos) / total.to_f * 100.0).round(2)
end

#--- zona de test ----

def test_pruebaMesa
    print validate(true, pruebaMesa([51,54,56,53,55,65],11,5,350)) 
    print validate(false, pruebaMesa([51,54,56,53,55,65],11,5,370)) 
    print validate(true, pruebaMesa([50,52,51,58,65,45],21,8,350)) 
end

def test_encuentraGanador
	nombres1=["Salvador Seresi","Juan Ruiz","Lourdes Villaran","Raul Castano","Mario Acua","German Tay"]
	votos1=[51,54,56,53,55,65]
	nombres2=["Roberto Miranda","Juan Luna","Edith Mayo","Rosa Ruiz","Felipe Ato","Jose Pachas"]
	votos2=[56,64,66,63,58,65]

    print validate("German Tay", encuentraGanador(nombres1,votos1)) 
    print validate("Edith Mayo", encuentraGanador(nombres2,votos2)) 
    print validate("Lourdes Villaran", encuentraGanador(nombres1,votos2)) 
end

def test_encuentraMalos
    print validate(4.32, encuentraMalos(11,5,370)) 
    print validate(6.22, encuentraMalos(18,5,370)) 
    print validate(8.29, encuentraMalos(21,8,350)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa - pregunta 1"
  puts "----------------------------------------"
  test_pruebaMesa
  puts " "
  test_encuentraGanador
  puts " "
  test_encuentraMalos
  puts " "
end
test
