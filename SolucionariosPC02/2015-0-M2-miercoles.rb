#encoding:UTF-8
=begin 
Una ONG desea ayudar a reducir el CO2 que los vehículos emiten, 
para tal caso se le ocurrido un mecanismo de puntos, donde los 
vehiculos ganan puntos no andar tantos kilometros. 
El vehículo puede ser una bicicleta, una moto, un auto o un 
camión. Los puntos se calculará de la siguiente manera:

Para los primeros 1000km;

a) 7 puntos por km puntos recorrido para las bicicletas.
b) 4 puntos por km recorrido para las motos.
c) 3 puntos por km recorrido para los autos.
c) 2 punto por km recorrido para los camiones.

A partir de los 1000Km para arriba (se otorga esta puntuación 
a los kilometros después de 1000)

a) 9 puntos por km puntos recorrido para las bicicletas.
b) 3 puntos por km recorrido para las motos.
c) 2 puntos por km recorrido para los autos.
c) 1 punto por km recorrido para los camiones.

Además, el gobierno está incentivando a que las personas y las 
empresas renueven sus autos. De esta manera se ganará una 
bonificación de puntos según la antigüedad del vehículo 
(en caso de motos, autos y camiones). El descuento se obtendrá 
de la siguiente manera:

Vehículo  Antigüedad  Bonificación (Puntos)
Motos 
  Mayor a 2010  100
  Mayor o igual al 2003 y menor o igual al 2012 200
  Mayor o igual a 1991 y menor al 2003  500
  Menor a 1991  750
Autos 
  Mayor a 2010  300
  Mayor o igual al 2003 y menor o igual al 2012 500
  Mayor o igual a 1995 y menor al 2003  1000
  Menor a 1995  1500
Camión  
  Mayor a 2013  500
  Mayor o igual al 2006 y menor o igual al 2013 1000
  Mayor o igual a 1992 y menor al 2006  1500
  Menor a 1992  2500

Se pide realizar los siguientes subprogramas:

1) Subprograma que obtenga la cantidad de puntos obtenidos en 
base al recorrido.
2) Subprograma que obtenga la bonificación por cambiar de 
vehículo a uno más nuevo.
3) Subprograma que obtenga el total de puntos.

=end
def puntosPorKmRecorrido(tipoVehiculo,kilometros)
  case tipoVehiculo
  when "Bicicleta"
    if kilometros <= 1000
      kilometros * 7
    else
      7000 + (kilometros - 1000) * 9
    end
  when "Auto"
    if kilometros <= 1000
      kilometros * 3
    else
      3000 + (kilometros - 1000) * 2
    end
  when "Moto"
    if kilometros <= 1000
      kilometros * 4
    else
      4000 + (kilometros - 1000) * 3
    end
  when "Camion"
    if kilometros <= 1000
      kilometros * 2
    else
      2000 + (kilometros - 1000) * 1
    end
  end
end

def obtenerBonificacion(tipoVehiculo,antiguedad)
  case tipoVehiculo
  when "Moto"
    if antiguedad > 2010
      100
    elsif antiguedad >= 2003 && antiguedad <= 2012
      200
    elsif antiguedad >= 1991 && antiguedad < 2003
      500
    else
      750
    end
  when "Auto"
    if antiguedad > 2010
      300
    elsif antiguedad >= 2003 && antiguedad <= 2012
      500
    elsif antiguedad >= 1995 && antiguedad < 2003
      1000
    else
      1500
    end
  when "Camion"
    if antiguedad > 2013
      500
    elsif antiguedad >= 2006 && antiguedad <= 2013
      1000
    elsif antiguedad >= 1992 && antiguedad < 2006
      1500
    else
      2500
    end
  else
    0.0
  end
end

def totalPuntos(tipoVehiculo,kilometros,antiguedad)
  puntosPorKmRecorrido(tipoVehiculo,kilometros) + obtenerBonificacion(tipoVehiculo,antiguedad)
end
#--- zona de test ----

def validate(expected, value)    
  expected == value ? "." : "F"
end

def test_puntosPorKmRecorrido
    print validate(1400,puntosPorKmRecorrido("Bicicleta",200))
    print validate(7027,puntosPorKmRecorrido("Bicicleta",1003))
    print validate(360,puntosPorKmRecorrido("Auto",120))
	print validate(4000,puntosPorKmRecorrido("Auto",1500))
    print validate(2000,puntosPorKmRecorrido("Moto",500))
	print validate(6040,puntosPorKmRecorrido("Moto",1680))
	print validate(600,puntosPorKmRecorrido("Camion",300))
	print validate(2256,puntosPorKmRecorrido("Camion",1256))

end

def test_obtenerBonificacion
    print validate(300,obtenerBonificacion("Auto",2012))
    print validate(1000,obtenerBonificacion("Auto",2000))
	print validate(1000,obtenerBonificacion("Auto",1996))
    print validate(1000,obtenerBonificacion("Camion",2011))
	print validate(1500,obtenerBonificacion("Camion",2001))
	print validate(500,obtenerBonificacion("Moto",1995))
	print validate(500,obtenerBonificacion("Moto",1993))
end

def test_totalPuntos
    print validate(1400.0,totalPuntos("Bicicleta",200,2014))
    print validate(7027.0,totalPuntos("Bicicleta",1003,2014))
    print validate(680.0,totalPuntos("Moto",120,2010))
    print validate(4800.0,totalPuntos("Moto",1200,2010))
    print validate(4300.0,totalPuntos("Auto",1500,2012))
	print validate(1540.0,totalPuntos("Auto",180,2000))
	print validate(3800.0,totalPuntos("Camion",1300,2000))
	print validate(3100.0,totalPuntos("Camion",300,1990))
end


def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_puntosPorKmRecorrido
  test_obtenerBonificacion
  test_totalPuntos 
  puts " "
end

test
