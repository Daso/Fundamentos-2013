=begin
El departamento de Transito del Lima pretende implementar el manejo de peajes de entrada utilizando una serie de stickers, los cuales van a variar en color dependiendo del numero de digito en que terminan las placas.

Se sabe que el color de sticker y digito final de la placa están relacionados de la siguiente manera:

		DÍGITO			COLOR
		1 o 2			amarillo
		3 o 4			rosa
		5 o 6			rojo
		7 o 8			verde
	    9 o 0			azul	

Se ha hecho un levantamiento de información en base a una muestra tomada durante una semana en la panamericana sur, norte y carretera central. De esa muestra se obtuvo tanto el numero de placas de los vehículos así como el tipo de vehiculo.

Adicionalmente se sabe que existen los siguientes tipos de vehiculo: “Camion”, “Auto”, “Bus”

Con los datos obtenidos se solicita lo siguiente:

1. Cual es el porcentaje de stickers rojos que se espera ingresen a la ciudad de Lima.
2. Cual es el número de vehículos cuyas placas terminan con placas comprendidas entre los dígitos 3 y 8
3. Cual es el tipo de vehículos que mas ingresan a Lima.
4. Devolver un listado con las placas de todos aquellos vehículos que tengan sticker azul.


=end
def porcentajePlacasRojas(placas)
  contador = 0.0
  for i in 0...placas.size
    if placas[i][5] == '5' || placas[i][5] == '6'
	  contador = contador + 1
	end
  end    
  return (contador / placas.size).round(2)
end
	
def numeroPlacas38(placas)
  contador = 0
  for i in 0...placas.size
    if placas[i][5] >= '3' && placas[i][5] <= '8'
	  contador += 1
	end
  end  
  return contador
end

def tipoVehiculoMasFrecuente(tipoVehiculo)
  cuenta_auto = 0
  cuenta_camion = 0  
  cuenta_bus = 0
  mayor = 0
  tipo_mayor = ""
  for i in 0...tipoVehiculo.size 
    case tipoVehiculo[i]
      when "Auto"
	    cuenta_auto += 1
	  when "Bus"
	    cuenta_bus += 1
	  else
	    cuenta_camion +=1
    end	
	if cuenta_auto > mayor 
	  mayor = cuenta_auto
	  tipo_mayor = "Auto"
	end
	if cuenta_bus > mayor
	  mayor = cuenta_bus
	  tipo_mayor = "Bus"
	end
	if cuenta_camion > mayor
	  mayor = cuenta_camion
	  tipo_mayor = "Camion"
	end
  end
  return tipo_mayor
end

def placasStickerAzul(placas)
  azules = []
  for i in 0...placas.size
    if placas[i][5] == '9' || placas[i][5] == '0'
	  azules.push(placas[i])
	end
  end 
  return azules 
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
