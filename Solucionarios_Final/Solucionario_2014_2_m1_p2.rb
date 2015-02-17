=begin
Evaluaciones escolares

El colegio “TRENKE” aplica un sistema de evaluación
 particular a sus alumnos donde la evaluación se hace de 
 forma constante en cada sesión de clase. Para ello, al 
 finalizar cada sesión de clase el profesor tomará una 
 evaluación de los temas vistos en dicha sesión y de una 
 duración máxima de veinte minutos. Si el alumno faltara 
 a dicha sesión su nota para esa evaluación será de cero (0).
De acuerdo a ello se ha determinado que el alumno rendirá 
13 pruebas que equivalen a las trece semanas de clase. 
Por ello, se le solicita lo siguiente:

a)	Desarrollar un subprograma que teniendo como base las 
13 notas de un alumno, nos retorne el promedio final obtenido.
 El promedio final se calculará tomando las 10 mejores notas 
 obtenidas durante las 13 sesiones que tiene el curso, no se 
 toman las 3 menores.
b)	Desarrollar un subprograma reciba las notas promedio 
final de todos los alumnos y determine quién fue el mejor 
alumno de la clase.
c)	Desarrollar un subprograma que reciba las notas promedio 
final de los alumnos y determine el promedio de todo el salón.

=end
def calcularpromedioalumno(notas)
  total = 0.0
  notas_ordenadas = notas.sort.reverse
  for i in 0..9
    total += notas_ordenadas[i]
  end
  return (total/10).round(2)  
end

def determinarmejoralumno(promedios,alumnos)
  indice = 0
  nota_mayor = promedios[0]
  for i in 0...promedios.size
    if promedios[i] > nota_mayor
	  nota_mayor = promedios[i]
	  indice = i
	end
  end
  return alumnos[indice]
end

def calcularpromediosalon(promedios)
  total = 0.0
  for i in 0...promedios.size
    total += promedios[i]
  end
  return (total / promedios.size).round(2)
end


#--- zona de test ----

def test_calcularpromedioalumno
	notas1=[11.00, 12.00, 16.00, 18.00, 5.00, 13.00, 15.00, 11.00, 7.00, 12.00, 17.00, 2.00, 11.00]
	notas2=[15.00, 13.00, 12.00, 17.00, 15.00, 3.00, 16.00, 10.00, 8.00, 20.00, 16.00, 12.00, 15.00]	
	notas3=[13.00, 10.00, 14.00, 15.00, 13.00, 11.00, 17.00, 9.00, 5.00, 15.00, 13.00, 18.00, 13.00]	

	print validate(13.60, calcularpromedioalumno(notas1)) 
	print validate(15.10, calcularpromedioalumno(notas2)) 
	print validate(14.20, calcularpromedioalumno(notas3)) 
end

def test_determinarmejoralumno
	promedios1=[11.00, 12.00, 16.00, 18.00, 5.00, 13.00, 15.00, 11.00, 7.00]
	promedios2=[15.00, 19.00, 12.00, 17.00, 15.00, 3.00, 16.00, 10.00, 8.00]	
	promedios3=[13.00, 10.00, 14.00, 15.00, 13.00, 11.00, 17.00, 9.00, 5.00]	

	alumnos=["Jose","Lorena", "Cecilia", "Diana","Alfredo","Myna","Pedro","Esteban","Karla"]		
	
    print validate("Diana",determinarmejoralumno(promedios1,alumnos)) 
    print validate("Lorena",determinarmejoralumno(promedios2,alumnos)) 
    print validate("Pedro",determinarmejoralumno(promedios3,alumnos)) 
end

def test_calcularpromediosalon
	promedios1=[11.00, 12.00, 16.00, 18.00, 5.00, 13.00, 15.00, 11.00, 7.00, 12.00, 17.00, 2.00, 11.00]
	promedios2=[15.00, 13.00, 12.00, 17.00, 15.00, 3.00, 16.00, 10.00, 8.00, 20.00, 16.00, 12.00, 15.00]	
	promedios3=[13.00, 10.00, 14.00, 15.00, 13.00, 11.00, 17.00, 9.00, 5.00, 15.00, 13.00, 18.00, 13.00]	
    print validate(11.54, calcularpromediosalon(promedios1)) 
    print validate(13.23, calcularpromediosalon(promedios2)) 
    print validate(12.77, calcularpromediosalon(promedios3)) 
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa - pregunta 2"
  puts "----------------------------------------"
  test_calcularpromediosalon
  puts " "
  test_calcularpromedioalumno
  puts " "
  test_determinarmejoralumno
  puts " "
end
test
