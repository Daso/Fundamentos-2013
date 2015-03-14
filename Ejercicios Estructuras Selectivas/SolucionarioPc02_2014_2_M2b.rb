#encoding:UTF-8
=begin 
Pregunta 1 

Una reconocida Universidad requiere un programa que le permita calcular el pago mensual de la nómina de sus docentes. Para el cálculo se debe tener en cuenta lo siguiente:

1.	La tarifa por hora trabajada va de acuerdo con el grado de instrucción alcanzado por el docente.
2.	Al total obtenido al multiplicar la cantidad de horas trabajadas al mes con su respectiva tarifa, la Universidad aplicará un % de aumento por antigüedad.

Las tarifas y el porcentaje son los indicados en el siguiente cuadro.

Grado de Instrucción	Tarifa x hora
Bachiller								S/. 40
Titulado								S/. 54
Maestría								S/. 72
Doctorado								S/. 100

Años de antigüedad	% de aumento
Más de 10 años			  		10%
Entre 6 y 10 años					7%
Entre 3 y 5 años 					5%
Menos de 3 años						3%

Además, la Universidad aplica un bono por puntualidad en la asistencia a las sesiones de clase. Los minutos de tardanza corresponden a la suma de los minutos de retraso de todas las sesiones del mes. De esta manera, el bono se aplica cumpliendo las siguientes condiciones:

Minutos de tardanza		Bono
0 minutos							S/. 120
Entre 1 y 5 minutos		S/. 80
Entre 6 y 10 minutos	S/. 40
Entre 11 y 15 minutos	S/. 0
Más de 16 minutos			S/. -40

Desarrollar un subprograma que permita determinar lo siguiente:

•	Tarifa x hora de un docente.
•	Porcentaje de aumento según la antigüedad del docente.
•	Bono por puntualidad en la asistencia.
•	Total a pagar a un docente en el mes. 


=end
def tarifaPorHora(gradoInstruccion)
  case gradoInstruccion
    when "Bachiller"
      40
    when "Titulado"
      54
    when "Maestria"
      72
    else
    	100
   end
end

def porcentajeAumento(antigDocente)
	case antigDocente
	  when 0..2
     	0.03
		when 3..5
     	0.05
		when 6..10
     	0.07
		else
			0.1
	end
end

def calcularBono(minutosTardanza)
	case minutosTardanza
	  when 0
	  	120
	  when 1..5
	  	80
	  when 6..10
	  	40
	  when 11..15
	  	0
    else
    	-40
  end
end

def totalPagar(totalHorasMes,gradoInstruccion,antigDocente,minutosTardanza)
	total = totalHorasMes * tarifaPorHora(gradoInstruccion)
	total = total + (total * porcentajeAumento(antigDocente))
	total = total + calcularBono(minutosTardanza)
end
#--- zona de test ----

def validate(expected, value)    
  expected == value ? "." : "F"
end

def test_tarifaPorHora
    print validate(40,tarifaPorHora("Bachiller"))
    print validate(54,tarifaPorHora("Titulado"))
    print validate(72,tarifaPorHora("Maestria"))
	print validate(100,tarifaPorHora("Doctorado"))
end

def test_porcentajeAumento
    print validate(0.1,porcentajeAumento(12))
    print validate(0.07,porcentajeAumento(8))
    print validate(0.05,porcentajeAumento(4))
	print validate(0.03,porcentajeAumento(2))
end

def test_calcularBono
    print validate(120,calcularBono(0))
    print validate(80,calcularBono(3))
    print validate(40,calcularBono(9))
	print validate(0,calcularBono(14))
	print validate(-40,calcularBono(23))
end

def test_totalPagar
    print validate(5355.76,totalPagar(92,"Titulado",8,9))
    print validate(6470.4,totalPagar(84,"Maestria",4,0))
    print validate(8540.0,totalPagar(78,"Doctorado",14,25))
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_tarifaPorHora
  test_porcentajeAumento
  test_calcularBono
  test_totalPagar
  puts " "
end
test
