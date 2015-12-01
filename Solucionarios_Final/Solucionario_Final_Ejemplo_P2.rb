=begin 
2.- Evaluaciones

Debido al incremento del alumnado en una reconocida Universidad, se ha generado la necesidad de desarrollar un programa que permita calificar sus prácticas y exámenes de manera automática.

La calificación de las evaluaciones se debe llevar a cabo teniendo en cuenta lo siguiente:

1.	Las alternativas marcadas por cada alumno serán entregadas en una cadena de caracteres, por ejemplo:

ACEABBAD-B

Para este ejemplo, la evaluación tuvo 10 preguntas y las opciones de cada pregunta iban de la “A” a la “E”. En este caso, el alumno en la pregunta 1 marcó la opción A, en la segunda pregunta marco la opción C, etc. 

Las preguntas no marcadas serán representadas por el caracter “-”. Para este ejemplo, el alumno no marcó la pregunta 9.

2.	Cada acierto equivale a 2 puntos, pregunta no marcada 0 puntos, preguntada marcada de manera incorrecta -1 puntos.

Se solicita lo siguiente:

1.	Subprograma que reciba la opción marcada, el número de pregunta y la cadena que contiene las respuestas correctas, y devuelva el puntaje obtenido.
2.	Subprograma que reciba la cadena con todas las alternativas seleccionadas por el alumno, y devuelva el puntaje obtenido en la evaluación.
3.	Subprograma que reciba un arreglo con los nombre de los alumnos, otro arreglo con las respuestas de sus evaluaciones, y devuelva un arreglo que contenga la siguiente nomenclatura:

[“Juan Perez – 20”, “Carlos Rodríguez - 12”, “Sofía López - 14”]


=end
def obtenerPuntajePorPregunta(opcion,numPregunta,respuestasCorrectas)
  if respuestasCorrectas[numPregunta - 1] == opcion
    2
  elsif opcion == '-'
  	0
  else 
    -1
  end
end
    
def obtenerPuntajeExamen(respuestasAlumno,respuestasCorrectas)
  total = 0
  for i in 0...respuestasCorrectas.size
    total = total + obtenerPuntajePorPregunta(respuestasAlumno[i],i + 1,respuestasCorrectas)
  end
  total   	
end
    
def obtenerListaNotas(nombres,respuestasAlumnos,respuestasCorrectas)
  reporte = []
  for i in 0...nombres.size
    nota = obtenerPuntajeExamen(respuestasAlumnos[i],respuestasCorrectas)	
    reporte << "#{nombres[i]} - #{nota}"
  end
  reporte
end

#----------Zona de Test------------------


def test_obtenerPuntajePorPregunta
	print validate(2, obtenerPuntajePorPregunta("C",3,@respuestasCorrectas))
	print validate(0, obtenerPuntajePorPregunta("-",7,@respuestasCorrectas))
	print validate(-1, obtenerPuntajePorPregunta("A",5,@respuestasCorrectas))
	print validate(-1, obtenerPuntajePorPregunta("B",1,@respuestasCorrectas))
	print validate(2, obtenerPuntajePorPregunta("B",10,@respuestasCorrectas))
end
    
def test_obtenerPuntajeExamen
	print validate(11, obtenerPuntajeExamen("ABCEDABAAE",@respuestasCorrectas))
    print validate(11, obtenerPuntajeExamen("ABBEDCEAAB",@respuestasCorrectas))
    print validate(17, obtenerPuntajeExamen("AACEDCBAAC",@respuestasCorrectas))
	print validate(14, obtenerPuntajeExamen("AACEDABAAC",@respuestasCorrectas))
end

 def test_obtenerListaNotas
	nombres1 = ["Juan Perez","Carlos Rodriguez","Erick Loarte"]
	nombres2 = ["Susan Lopez","Magaly Quintana","Jose Ramirez"]
	nombres3 = ["Antonio Bueno","Jose Salcedo","Miguel Solano"]
 
	respuestas1 = ["AACECCBBAB","BACEDCBAAB","ABCEACBDAC"]
	respuestas2 = ["AACECCBBAB","BACEDCBAAB","ABCEACBDAC"]
	respuestas3 = ["AACEDCBAAB","AACEDCCAAB","EACEDDBADB"]
 
	print validate(["Juan Perez - 14","Carlos Rodriguez - 17","Erick Loarte - 8"], obtenerListaNotas(nombres1,respuestas1,@respuestasCorrectas))
	print validate(["Susan Lopez - 14","Magaly Quintana - 17","Jose Ramirez - 8"], obtenerListaNotas(nombres2,respuestas2,@respuestasCorrectas))
	print validate(["Antonio Bueno - 20","Jose Salcedo - 17","Miguel Solano - 11"], obtenerListaNotas(nombres3,respuestas3,@respuestasCorrectas))
 end   
    

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  @respuestasCorrectas = "AACEDCBAAB"	

  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtenerPuntajePorPregunta
  puts " "
  test_obtenerPuntajeExamen
  puts " "
  test_obtenerListaNotas
  puts " "
end
test
