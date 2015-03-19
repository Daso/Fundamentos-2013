=begin 
Una compañía de taxis brinda servicios a nivel distrital, 
interprovincial e interdepartamental; y fija sus tarifas 
de acuerdo con el kilometraje recorrido y el número de 
pasajeros que transporta (máximo 5) tal y como se muestra 
en el siguiente cuadro:

 
Tipo de Servicio  Costo x cada 10km  de recorrido Número de 
Personas
Distrital 0.50  1 a 3
Distrital 0.70  4 a 5
Interprovincial 0.80  1 a 3
Interprovincial 0.90  4 a 5
Interdepartamental  1.25  1 a 3
Interdepartamental  1.50  4 a5

Se pide escribir un programa que calcule el monto a cobrar 
en un viaje teniendo como datos el tipo de servicio realizado, 
la distancia entre los 2 puntos del viaje y el número de pasajeros
 que tomaron el viaje.



=end

def calculartarifa(tiposervicio,distancia,pasajeros)
  case tiposervicio
  when "distrital"
    case pasajeros       
    when 1..3
      0.5 * distancia / 10
    when 4, 5
      0.7 * distancia / 10
    else
      0.0
    end
  when "interprovincial"
    case pasajeros 
    when 1..3
      0.8 * distancia / 10
    when 4, 5
      0.9 * distancia / 10
    else
      0.0
    end
  else
    case pasajeros 
    when 1..3
      1.25 * distancia / 10
    when 4, 5
      1.5 * distancia / 10
    else
      0.0
    end
  end
end

#--- zona de test ----

def test_calculartarifa
    print validate(12.5, calculartarifa("distrital",250.0,3))
    print validate(10.5, calculartarifa("distrital",150.0,5))
	print validate(8.0, calculartarifa("interprovincial",100.0,2))
	print validate(18.0, calculartarifa("interprovincial",200.0,4))
	print validate(37.5, calculartarifa("interdepartamental",300.0,2))
	print validate(60.0, calculartarifa("interdepartamental",400.0,5))
	print validate(0.0, calculartarifa("interdepartamental",400.0,6))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calculartarifa
  puts " "
end
test
