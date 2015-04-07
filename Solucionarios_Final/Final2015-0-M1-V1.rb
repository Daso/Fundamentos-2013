=begin
1.- Centro de estudios

Un centro de estudios superiores necesita potenciar su campaña de captación de alumnos para sus diferentes carreras. Se va a realizar una investigación para determinar varios aspectos de los estudiantes actuales y con ello poder tomar decisiones importantes. 
La investigación se basa en las notas que los alumnos han obtenido al final del ciclo por lo que es necesario que usted realice lo siguiente:
a)	Se necesita saber ¿Cuántos alumnos están por sobre la media poblacional de notas de todos los alumnos?, por ello debe desarrollar un subprograma para ello.
Por ejemplo: si tenemos que las notas son [11.5, 15.4, 18.5, 10.0, 8.5] la cantidad resultante sería 2 porque esos son los alumnos con notas mayores a 12.78 que es la media poblacional. 
b)	Se necesita saber el porcentaje de alumnos que están en riesgo. Este riesgo se determina por todos los alumnos que están desaprobados, tomando como base que para aprobar un curso, la nota mínima es 12.5.
c)	Se necesita premiar al alumno que ha obtenido la nota más alta. Para ello, debe desarrollar un subprograma que determine ¿Quién es este alumno?, debe indicar como resultado, el nombre y apellido, así como la carrera que sigue y el ciclo en el cual se encuentra. 
Por ejemplo: “Jose Quispe, Ingeniería Contabilidad, ciclo V”
	

	
=end

#encoding:UTF-8

def determinarmayores(notas)
  contador = 0
  total = 0
  for i in 0...notas.size
    total += notas[i]
  end
  promedio = total / notas.size
  for i in 0...notas.size
    if notas[i] > promedio
      contador += 1
    end
  end
  contador
end

def determinarriesgo(notas)
  jalados = 0 
  for i in 0...notas.size
    if notas[i] < 12.5
      jalados += 1
    end    
  end
  jalados * 100.0 / notas.size
end

def determinarmejor(notas,nombres,carrera,ciclo)
  mayor = notas[0]
  indice = 0
  for i in 0...notas.size
    if mayor < notas[i]
      mayor = notas[i]
      indice = i
    end
  end 
  nombres[indice] + ", " + carrera[indice] + ", " + ciclo[indice]
end
#--- zona de test ----

def test_determinarmejor
	notas1=[15.5,16.4,12.5,14.0,10.5]
	notas2=[10.5,11.4,13.5,14.0,9.5]
	notas3=[11.0,12.4,13.5,15.1,17.5]
	nombres1=["Jose Carpio","Manuel Alberti","Josefina Malca","Alberto Pinto","Karina Palacios"]
	carrera1=["Administración","Ingeniería Industrial","Marketing","Contabilidad","Negocios"]
	ciclo1=["ciclo V","ciclo VI","ciclo II","ciclo VIII","ciclo X"]
    print validate("Manuel Alberti, Ingeniería Industrial, ciclo VI", determinarmejor(notas1,nombres1,carrera1,ciclo1))
	print validate("Alberto Pinto, Contabilidad, ciclo VIII", determinarmejor(notas2,nombres1,carrera1,ciclo1))
	print validate("Karina Palacios, Negocios, ciclo X", determinarmejor(notas3,nombres1,carrera1,ciclo1))	
end

def test_determinarmayores
	notas1=[15.5,16.4,12.5,14.0,10.5]
	notas2=[10.5,11.4,13.5,14.0,9.5]
	notas3=[11.0,12.4,13.5,15.1,17.5]
	print validate(3, determinarmayores(notas1))
	print validate(2, determinarmayores(notas2))
	print validate(2, determinarmayores(notas3))
end

def test_determinarriesgo
	notas1=[15.5,16.4,12.5,14.0,10.5]
	notas2=[10.5,11.4,13.5,14.0,9.5]
	notas3=[11.0,12.4,13.5,15.1,17.5]
	print validate(20.00, determinarriesgo(notas1))
	print validate(60.00, determinarriesgo(notas2))
	print validate(40.00, determinarriesgo(notas3))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarmejor
  puts " "
  test_determinarmayores
  puts " "
  test_determinarriesgo
  puts " "
end
test
