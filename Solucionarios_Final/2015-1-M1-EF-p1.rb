=begin
Focus Group

Una empresa desea conocer la opinión del público sobre sus productos que son quesos de cinco tipos: Parmesano, Gouda, Edam, Fresco y Azul. Por ello quiere una aplicación que le permita procesar los datos. A los asistentes se les da unas encuestas donde marcan sus preferencias en un nivel del 1 al 5 donde se ha definido:

Nivel    Definición
1    No lo compraría
2    Lo compraría muy poco
3    Lo compraría rara vez
4    Lo compraría a veces
5    Lo compraría siempre

Se le pide lo siguiente:

-    Desarrollar un subprograma que determine ¿qué quesos tienen clasificación de 5?
-    Desarrollar un subprograma que determine ¿qué porcentaje de quesos está por sobre 3 en el puntaje?
-    Desarrollar un subprograma que permita buscar el nivel de un queso específico.
=end

def buscar_mejores_quesos(nivel,tipo_queso)

end
    
def calcular_quesos_sobre_promedio(nivel)
 
end
    
def buscar_nivel_queso_por_tipo(nivel,tipo_queso, nombre_queso)
 
end

#----------Zona de Test------------------

@tipo_queso = ["Parmesano", "Gouda", "Edam", "Fresco", "Azul"]

def test_buscar_mejores_quesos
  toma1 = [5,3,5,3,2]
  toma2 = [3,2,3,5,1]
  toma3 = [1,5,3,4,5]
 
  print validate(["Parmesano", "Edam"], buscar_mejores_quesos(toma1,@tipo_queso))
  print validate(["Fresco"], buscar_mejores_quesos(toma2,@tipo_queso))
  print validate(["Gouda", "Azul"], buscar_mejores_quesos(toma3,@tipo_queso))
end
    
def test_calcular_quesos_sobre_promedio
    toma1 = [5,3,5,3,2]
  toma2 = [3,2,3,5,1]
  toma3 = [1,5,3,4,5]

    print validate(40.00, calcular_quesos_sobre_promedio(toma1))
    print validate(20.00, calcular_quesos_sobre_promedio(toma2))
    print validate(60.00, calcular_quesos_sobre_promedio(toma3))
end

 def test_buscar_nivel_queso_por_tipo
  toma1 = [5,3,5,3,2]
  toma2 = [3,2,3,5,1]
  toma3 = [1,5,3,4,5]


  print validate(5, buscar_nivel_queso_por_tipo(toma1,@tipo_queso,"Edam"))
  print validate(5, buscar_nivel_queso_por_tipo(toma2,@tipo_queso,"Fresco"))
  print validate(1, buscar_nivel_queso_por_tipo(toma3,@tipo_queso,"Parmesano"))
  print validate(5, buscar_nivel_queso_por_tipo(toma3,@tipo_queso,"Gouda"))
 end   
    
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_buscar_mejores_quesos
  puts " "
  test_calcular_quesos_sobre_promedio
  puts " "
  test_buscar_nivel_queso_por_tipo
  puts " "
end

test
