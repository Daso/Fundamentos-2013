=begin
2.	Cadena de Restaurantes (10 puntos)

Una cadena de restaurantes con varias sucursales a nivel nacional está evaluando el nivel de satisfacción de sus clientes, esta evaluación incluye la atención recibida y la comida servida.

Los valores de calificación son los siguientes:

Calificación	Definición
5	Excelente
4	Buena
3	Regular
2	Mala
1	Pésima

Se solicita lo siguiente:

a)	Un subprograma que muestre cuantas veces un local ha sido calificado con un nivel superior a 3.
b)	Un subprograma que en base al total de encuestas nos muestre cual es la sucursal con mejor calificación, si en caso hubiera más de una se deben indicar todas.

=end

def calcularPuntajeSuperiorATres(calificaciones)
  contador = 0
  for i in 0...calificaciones.size
    if calificaciones[i] > 3
	  contador += 1
	end
  end
  contador
end

def mayor(puntaje)

end
    
def mostrarSucursalTop(puntaje,sucursal)
  mayor = puntaje[0]
  tops = []
  pos = 0
  for i in 0...sucursal.size
    if puntaje[i] > mayor
	  mayor = puntaje[i]
      pos = i	  
	end
  end
  for i in 0...sucursal.size
    if puntaje[i] == mayor
	  tops << sucursal[i]
	end
  end
  tops 
end

#----------Zona de Test------------------

def test_calcularPuntajeSuperiorATres
  calificacion1 = [5,3,5,3,2,1,5,4,2,1,4,5]
  calificacion2 = [3,2,3,5,1,2,4,3,2,5,4,1]
  calificacion3 = [1,5,3,4,5,4,2,2,1,5,4,5]
  calificacion4 = [5,4,1,2,3,4,3,5,4,3,2,3]
  
  print validate(6, calcularPuntajeSuperiorATres(calificacion1))
  print validate(4, calcularPuntajeSuperiorATres(calificacion2))
  print validate(7, calcularPuntajeSuperiorATres(calificacion3))
  print validate(5, calcularPuntajeSuperiorATres(calificacion4))
end
    
def test_mostrarSucursalTop
 	calificacion1 = [145,142,154,122,114,151]
	sucursales1 = ["OpenAngamos","CentroCivico","JockeyPlaza","Benavides","PlazaSanMiguel","JorgeChavez"]
	calificacion2 = [130,124,143,154,141,134]
	sucursales2 = ["OpenAngamos","CentroCivico","JockeyPlaza","Benavides","PlazaSanMiguel","JorgeChavez"]
	calificacion3 = [135,110,132,121,135,129]
	sucursales3 = ["OpenAngamos","CentroCivico","JockeyPlaza","Benavides","PlazaSanMiguel","JorgeChavez"]
  calificacion4 = [122,127,131,139,124,126]
  sucursales4 = ["LarcoMar","LaPerla","LimaPlazaSur","OpenAtocongo","LimaNorte","CaminosDelInca"]
	
  print validate(["JockeyPlaza"], mostrarSucursalTop(calificacion1, sucursales1))
  print validate(["Benavides"], mostrarSucursalTop(calificacion2, sucursales2))
  print validate(["OpenAngamos","PlazaSanMiguel"], mostrarSucursalTop(calificacion3, sucursales3))
  print validate(["OpenAtocongo"], mostrarSucursalTop(calificacion4, sucursales4))

end   
    
def validate (expected, value)
  expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularPuntajeSuperiorATres
  puts " "
  test_mostrarSucursalTop
  puts " "
end

test
