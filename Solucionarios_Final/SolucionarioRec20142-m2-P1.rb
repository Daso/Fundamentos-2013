#encoding:utf-8
=begin
  Ocho locos

Un jugador de cartas tiene problemas para acordarse de todas las reglas del juego y para realizar algunas otras operaciones básicas, por lo que pidio a usted crear un programa de computadora . Para esto definió las siguientes reglas:

Nro Carta Definición
2 Salta
8 Cambio palo
11  Roba 1
12  Roba 2
13  Roba 3

Se le pide lo siguiente:

- Desarrollar un subprograma que reciba una carta y devuelva el poder, en caso no sea una de las cartas especiales entonces el programa debe devolver “Sin poder”.

- Desarollar un subprograma que valide si una carta es especial o no.

- Desarollar un subprograma que dada una mano de cartas, cuente cuantas cartas con privilegios tengo.

- Desarrollar un subprograma que me permita ubicar la mayor de las cartas de una mano.

- Desarrollar un subprograma que me permita ubica la menor de las cartas de una mano.

=end
end
def determinarPoder(carta)
  case carta
    when 2
      return "Salta"
    when 8
      return "Cambio palo"
    when 11
      return "Roba 1"
    when 12 
      return "Roba 2"
    when 13 
      return "Roba 3"
    else
      return "Sin poder"
  end
    
end
    
def tienePrivilegios(carta)
  case carta
    when 2
      return true
    when 8
      return true
    when 11..13
      return true
    else
      return false
  end
end
    
def cuentaCartas(mano)
  contador = 0
  for i in 0...mano.size
    case mano[i]
     when 2,8,11,12,13
      contador += 1
    end
  end
  return contador
end

def ubicarMenorCarta(mano)
  return mano.sort.first
end

def ubicarMayorCarta(mano)
 return mano.sort.last
end


#----------Zona de Test------------------


def test_determinarPoder
    print validate("Salta", determinarPoder(2))
    print validate("Cambio palo", determinarPoder(8))
    print validate("Roba 1", determinarPoder(11))
    print validate("Roba 2", determinarPoder(12))
    print validate("Roba 3", determinarPoder(13))
    print validate("Sin poder",determinarPoder(4))
end
    
def test_tienePrivilegios
    print validate(true, tienePrivilegios(2))
    print validate(false, tienePrivilegios(3))
    print validate(false, tienePrivilegios(4))
    print validate(false, tienePrivilegios(5))
    print validate(true, tienePrivilegios(8))
    print validate(true, tienePrivilegios(11))
    print validate(true, tienePrivilegios(12))
    print validate(true, tienePrivilegios(13))
end

def test_cuentaCartas
    print validate(5, cuentaCartas([1,2,3,4,5,6,7,8,9,10,11,12,13]))
    print validate(2, cuentaCartas([1,2,3,4,5,6,7,8]))
    print validate(3, cuentaCartas([11,12,13]))
end

def test_ubicarMenorCarta
    print validate(5, ubicarMenorCarta([11,5,13,13,10,11,12,8]))
    print validate(1, ubicarMenorCarta([1,2,3,4,5,6,7,8]))
    print validate(11, ubicarMenorCarta([13,12,11]))
end

def test_ubicarMayorCarta
    print validate(13, ubicarMayorCarta([11,5,13,13,10,11,12,8]))
    print validate(8, ubicarMayorCarta([1,2,3,4,5,6,7,8]))
    print validate(13, ubicarMayorCarta([13,12,11]))
end
    

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarPoder
  puts " "
  test_tienePrivilegios
  puts " "
  test_cuentaCartas
  puts " "
  test_ubicarMenorCarta
  puts " "
  test_ubicarMayorCarta
  puts " "
end

test
