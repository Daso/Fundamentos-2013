=begin
Se requiere una aplicación que defina los niveles de azucar 
adecuado de productos bebibles azucarados. Esto debido a que 
se quiere que las personas tengan una idea del rango consumible 
de azucar que pueden comprometer su salud :

Ejemplo de productos
Azucar 					gr   	Mensaje
Agua   					0gr  “Muy Adecuado”
Leche  					12gr  “Adecuado”
Jugo de Naranja natural 36gr  “Límite”
Coca Cola               63gr  “Excesivo”

Se pide lo siguiente:

1. Subprograma que permita, teniendo los gr de azucar como dato de entrada, determinar el mensaje 
que se le enviará al usuario tomando como ejemplo los valores mostrados. Así si un producto tiene 
entre 0 y 11.99 gramos de azucar emitirá el mensaje “Muy Adecuado”.
2. Subprograma que me permita calcular el tiempo en que una persona elimina calorías de su cuerpo.
 Para ellos se debe tomar en cuenta que la pérdida de calorías es progresiva durante el tiempo de 
 entrenamiento.

Se considera que una persona consume el 10% de las calorías consumidas por hora de entrenamiento.

Por lo que si una persona ha consumido, por ejemplo, 2000 calorías y hace dos horas de ejercicio 
perderá en la primera hora 200 con lo que tendrá 1800 calorías, durante la segunda hora serán 180 
por lo que quedará con  1620 y así prograsivamente. En base a las calorías iniciales y las horas 
de entrenamiento determinar las calorías residuales. 

=end

def mensaje(azucar)
	case azucar
  when 0..11
    "Muy Adecuado"
  when 12..35
    "Adecuado"
  when 36..62
    "Límite"
  else
    "Excesivo"
  end
end

def tiempo_de_eliminacion(calorias, tiempo_entrenamiento)
  for i in 1..tiempo_entrenamiento
    calorias *= 0.9
  end
  calorias.round(2)
=begin
  tiempo_entrenamiento.times do  
    calorias = calorias * 0.9
  end
  calorias.round(2)
=end
end

#--- zona del programa principal ----

#--- zona de test ----
def test_mensaje
  print validate("Muy Adecuado", mensaje(10)) 
  print validate("Adecuado", mensaje(15)) 
  print validate("Límite", mensaje(60)) 
	print validate("Excesivo", mensaje(760))
end

def test_tiempo_de_eliminacion
  print validate(1620.0, tiempo_de_eliminacion(2000,2)) 
  print validate(2483.34, tiempo_de_eliminacion(3785, 4)) 
  print validate(1367.93, tiempo_de_eliminacion(1876.45, 3)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_mensaje
  puts ""
  test_tiempo_de_eliminacion
  puts " "
end
test
