=begin
El departamento de Transito del Lima pretende implementar el manejo 
de peajes de entrada utilizando una serie de stickers, los cuales 
van a variar en color dependiendo del número de dígito en que 
terminan las placas.
Se sabe que el color de sticker y digito final de la placa están 
relacionados de la siguiente manera:
		DÍGITO			COLOR
		1 o 2			amarillo
		3 o 4			rosa
		5 o 6			rojo
		7 o 8			verde
	    9 o 0			azul	
Se ha hecho un levantamiento de información en base a una muestra 
tomada durante una semana en la panamericana sur, norte y carretera 
central. De esa muestra se obtuvo tanto el número de placas de los 
vehículos así como el tipo de vehículo.
Adicionalmente se sabe que existen los siguientes tipos de vehiculo: 
“Camion”, “Auto”, “Bus”
Con los datos obtenidos se solicita lo siguiente:
1. Cuál es el porcentaje de stickers rojos que se espera ingresen a la 
ciudad de Lima.
2. Cuál es el número de vehículos cuyas placas terminan con placas 
comprendidas entre los dígitos 3 y 8
3. Cuál es el tipo de vehículo que más ingresa a Lima.
4. Devolver un listado con las placas de todos aquellos 
vehículos que tengan sticker azul.
=end

def porcentajePlacasRojas(placas)
  total_rojas = 0.0
  for i in 0...placas.size
    if placas[i][5] == "5" || placas[i][5] == "6"
	  total_rojas += 1
	end
  end
  return (total_rojas / placas.size).round(2)
end
	
def numeroPlacas38(placas)
   cantidad = 0.0
  for i in 0...placas.size
    if (placas[i][5]).to_i >= 3 && (placas[i][5]).to_i <= 8
	  cantidad += 1
	end
  end
  return cantidad
end

def tipoVehiculoMasFrecuente(tipoVehiculo)
  mas_frecuente = ""
  cantidad_auto = 0
  cantidad_camion = 0
  cantidad_bus = 0
  mayor_cantidad = 0
  for i in 0...tipoVehiculo.size
    case tipoVehiculo[i]
	  when "Auto"
	    cantidad_auto += 1
		if cantidad_auto > mayor_cantidad
		  mayor_cantidad = cantidad_auto
		  mas_frecuente = "Auto"
		end
	  when "Camion"
	    cantidad_camion += 1
		if cantidad_camion > mayor_cantidad
		  mayor_cantidad = cantidad_camion
		  mas_frecuente = "Camion"
		end
	  else
	    cantidad_bus += 1
		if cantidad_bus > mayor_cantidad
		  mayor_cantidad = cantidad_bus
		  mas_frecuente = "Bus"
		end
	end	  	
  end
  return mas_frecuente   
end

def placasStickerAzul(placas)
  carros_azul = []
  for i in 0...placas.size
    if placas[i][5] == "9" || placas[i][5] == "0"
	  carros_azul.push(placas[i])
	end
  end
  return carros_azul
end
    

#----------Zona de Test------------------

def test_porcentajePlacasRojas
     print validate(0.17, porcentajePlacasRojas(@placas1))
     print validate(0.00, porcentajePlacasRojas(@placas2))
     print validate(0.33, porcentajePlacasRojas(@placas3))
end
    
def test_numeroPlacas38
     print validate(6, numeroPlacas38(@placas1))
     print validate(5, numeroPlacas38(@placas2))
     print validate(4, numeroPlacas38(@placas3))
end

def test_tipoVehiculoMasFrecuente
     print validate("Auto", tipoVehiculoMasFrecuente(@modelo1))
     print validate("Bus", tipoVehiculoMasFrecuente(@modelo2))
     print validate("Camion", tipoVehiculoMasFrecuente(@modelo3))
end   
 
def test_placasStickerAzul
     print validate(@respuesta1, placasStickerAzul(@placas1))
     print validate(@respuesta2, placasStickerAzul(@placas2))
     print validate(@respuesta3, placasStickerAzul(@placas3))
end   
    
#----------------zona de test-----------------

  @placas1 = ["AGX123","BGX837","IUR923","YRS623","PSO998","MWR836"]  
  @placas2 = ["RYZ930","GUE844","CHI934","ROX123","WWW333","POR923"]  
  @placas3 = ["AGX125","BGX838","IUR929","YRS611","PSO977","MWR845"]  

  @modelo1 = ["Camion","Auto","Auto","Auto","Auto","Auto"] 
  @modelo2 = ["Bus","Camion","Bus","Bus","Bus","Bus"] 
  @modelo3 = ["Auto","Bus","Camion","Bus","Camion","Camion"] 
  
  @respuesta1 = []
  @respuesta2 = ["RYZ930"] 
  @respuesta3 = ["IUR929"] 

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_porcentajePlacasRojas
  test_numeroPlacas38
  test_tipoVehiculoMasFrecuente
  test_placasStickerAzul
  puts " "
end

test
