=begin 
Aerolínea

Una conocida aerolínea necesita contar con 
un programa que le permita gestionar información 
acerca del estado de los asientos de cada uno de 
sus vuelos. Para esto, se cuenta con 2 arreglos: 
el primer arreglo contiene el número de asientos 
que tiene el vuelo, y el segundo contiene el estado 
de cada uno de los asientos 
(O = ocupado, D = desocupado).

Se requiere lo siguiente:

1.  Subprograma que obtenga la cantidad de asientos 
disponibles.
2.  Subprograma que devuelva la lista de asientos 
que se encuentran disponibles.
3.  Subprograma que devuelva el número del primer 
asiento disponible. En caso no exista asiento disponible devolver cero.
4.  Subprograma que devuelva el número del último 
asiento disponible. En caso no exista asiento disponible devolver cero.
5.  Subprograma que devuelva el porcentaje de 
asientos disponibles.

=end

def numAsientosDisponibles(estadoAsientos)
	contador = 0
  for i in 0...estadoAsientos.size
    if estadoAsientos[i] == "D"
      contador += 1
    end
  end
  contador
end    

def listaAsientosDisponibles(asientos,estadoAsientos)
  asientos_disponibles = Array.new
  for i in 0...estadoAsientos.size
    if estadoAsientos[i] == "D"
       asientos_disponibles.push(asientos[i])
    end
  end
  asientos_disponibles
end

def primerAsientoDisponible(asientos,estadoAsientos)
	for i in 0...estadoAsientos.size
    if estadoAsientos[i] == "D"
        return asientos[i]
    end
  end
end

def ultimoAsientoDisponible(asientos,estadoAsientos)
  estado_asientos = estadoAsientos.reverse
  asientos_inverso = asientos.reverse
  for i in 0...estado_asientos.size
    if estado_asientos[i] == "D"
        return asientos_inverso[i]
    end
  end
end

def porcentajeDisponible(estadoAsientos)
	numAsientosDisponibles(estadoAsientos) / estadoAsientos.size.to_f
end
    
#--- zona de test ----

def test_numAsientosDisponibles
  print validate(10,numAsientosDisponibles(@estado1))
  print validate(8,numAsientosDisponibles(@estado2))
  print validate(7,numAsientosDisponibles(@estado3))
end

def test_listaAsientosDisponibles
  print validate([4,6,7,8,10,11,13,15,16,17],listaAsientosDisponibles(@listaAsientos,@estado1))
  print validate([1,2,3,9,10,11,12,15],listaAsientosDisponibles(@listaAsientos,@estado2))
  print validate([6,11,13,15,16,18,19],listaAsientosDisponibles(@listaAsientos,@estado3))
end

def test_primerAsientoDisponible
   print validate(4,primerAsientoDisponible(@listaAsientos,@estado1))
   print validate(1,primerAsientoDisponible(@listaAsientos,@estado2))
   print validate(6,primerAsientoDisponible(@listaAsientos,@estado3))
  
end

def test_ultimoAsientoDisponible
   print validate(17,ultimoAsientoDisponible(@listaAsientos,@estado1))
   print validate(15,ultimoAsientoDisponible(@listaAsientos,@estado2))
   print validate(19,ultimoAsientoDisponible(@listaAsientos,@estado3))
  
end

def test_porcentajeDisponible
   print validate(0.50,porcentajeDisponible(@estado1))
   print validate(0.40,porcentajeDisponible(@estado2))
   print validate(0.35,porcentajeDisponible(@estado3))
  
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  @listaAsientos = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
  
  @estado1 =["O","O","O","D","O","D","D","D","O","D","D","O","D","O","D","D","D","O","O","O"] 
  @estado2 =["D","D","D","O","O","O","O","O","D","D","D","D","O","O","D","O","O","O","O","O"] 
  @estado3 =["O","O","O","O","O","D","O","O","O","O","D","O","D","O","D","D","O","D","D","O"] 
  
  puts "---------------------------"
  test_numAsientosDisponibles
  test_listaAsientosDisponibles
  test_primerAsientoDisponible
  test_ultimoAsientoDisponible
  test_porcentajeDisponible
  puts " "
end
test
