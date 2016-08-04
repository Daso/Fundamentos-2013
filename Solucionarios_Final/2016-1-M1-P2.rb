=begin
Pregunta 2.- Debate presidencial

Luego del debate electoral realizado en el Jurado Nacional de Elecciones una empresa de estudio de mercado realizó una encuesta para determinar preferencias del electorado. La encuesta tuvo las siguientes preguntas:

-	¿Estuvo usted de acuerdo con el formato del debate? 
o	Las respuestas posibles fueron 
	S= para SI 
	N= para No.
	X= para No sabe/No opina

-	¿Para usted cuales fueron los puntos más importantes tratados en el debate?
o	Las respuestas posibles fueron:
	1= Salud
	2= Seguridad
	3= Lucha contra la corrupción
	0= No sabe/No opina
-	¿Qué fue lo que no le gustó del debate?
o	Las respuestas posibles fueron:
	1=No se expuso con claridad las ideas de fondo
	2=Hubo mucho ataque sin sentido en vez de propuestas
	3=El tiempo de cada participante fue muy corto para exponer
	0=No sabe/No opina

Todas las respuestas fueron incluidas en un arreglo de respuestas para cada pregunta. De acuerdo a ello, se le solicita lo siguiente:

a)	Desarrollar un subprograma para determinar ¿Cuál fue el punto más importante para los encuestados?
b)	Desarrollar un subprograma para determinar ¿Cuál fue el porcentaje de aceptación de del debate?
c)	Elaborar un subprograma que determine el porcentaje de personas que se mantuvieron indiferentes al debate


=end 

def determinarmasimportante(pregunta2)
   cont_1 = 0
   cont_2 = 0
   cont_3 = 0
   for i in 0...pregunta2.size 
      case pregunta2[i]
      when "1"
        cont_1 += 1
      when "2"
        cont_2 += 1
      when "3"
        cont_3 += 1
      end 
   end
   
   if cont_1 > cont_2 && cont_1 > cont_3
   	  return "Salud"
   end
   if cont_2 > cont_1 && cont_2 > cont_3
   	  return "Seguridad"
   end
   if cont_3 > cont_1 && cont_3 > cont_2
   	  return "Lucha contra la corrupcion"
   end
end

def determinaraceptacion(pregunta1,pregunta2,pregunta3)
  cont = 0.0 
  for i in 0...pregunta1.size
    if pregunta1[i] != "X" && pregunta2[i] != "0" && pregunta3[i] != "0"
    	cont += 1 
    end 
  end 
  ((cont / pregunta1.size) * 100).round(2)
end

def mostrarIndiferencia(pregunta1,pregunta2,pregunta3)
   cont = 0.0 
  for i in 0...pregunta1.size
    if pregunta1[i] == "X" || pregunta2[i] == "0" || pregunta3[i] == "0"
    	cont += 1 
    end 
  end 
  ((cont / pregunta1.size) * 100).round(2)
end


#--- zona de test ----

def test_determinarmasimportante
	respuestas1=["3","1","2","3","0","2","0","3","1"]
	respuestas2=["2","2","2","0","1","1","3","2","0"]
	respuestas3=["0","0","1","1","1","2","2","3","0"]
	
    print validate("Lucha contra la corrupcion", determinarmasimportante(respuestas1)) 
    print validate("Seguridad", determinarmasimportante(respuestas2)) 
    print validate("Salud", determinarmasimportante(respuestas3)) 
end

def test_determinaraceptacion
	respuestas11=["S","S","X","N","N","S","N","X","S"]
	respuestas12=["N","S","S","X","N","S","N","X","N"]
	respuestas13=["S","S","S","N","N","S","N","S","N"]
	
	respuestas21=["3","1","2","2","3","0","0","2","1"]
	respuestas22=["3","3","3","1","2","0","0","0","2"]
	respuestas23=["1","2","3","0","0","3","2","3","3"]

	respuestas31=["3","1","2","2","3","0","0","2","1"]
	respuestas32=["3","3","3","1","2","2","2","0","2"]
	respuestas33=["1","2","3","1","1","3","2","3","3"]

  print validate(77.78,determinaraceptacion(respuestas11,respuestas12,respuestas13)) 
  print validate(44.44,determinaraceptacion(respuestas21,respuestas22,respuestas23)) 
  print validate(88.89,determinaraceptacion(respuestas31,respuestas32,respuestas33)) 
end

def test_mostrarIndiferencia
	respuestas11=["S","S","X","N","N","S","N","X","S"]
	respuestas12=["N","S","S","X","N","S","N","X","N"]
	respuestas13=["S","S","S","N","N","S","N","S","N"]
	
	respuestas21=["3","1","2","2","3","0","0","2","1"]
	respuestas22=["3","0","0","1","2","0","0","0","2"]
	respuestas23=["1","2","3","0","0","3","2","3","3"]

	respuestas31=["3","1","2","2","3","0","0","2","1"]
	respuestas32=["3","3","3","1","2","0","0","0","2"]
	respuestas33=["1","2","3","0","0","3","2","3","3"]
	
  print validate(44.44, mostrarIndiferencia(respuestas11,respuestas21,respuestas31)) 
  print validate(66.67, mostrarIndiferencia(respuestas12,respuestas22,respuestas32)) 
  print validate(22.22, mostrarIndiferencia(respuestas13,respuestas23,respuestas33)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarmasimportante
  puts " "
  test_determinaraceptacion
  puts " "
  test_mostrarIndiferencia
  puts " "
end
test
