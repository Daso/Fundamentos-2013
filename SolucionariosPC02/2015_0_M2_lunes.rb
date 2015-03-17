#encoding:UTF-8
=begin 
Una empresa requiere un programa para poder determinar los programas de becas a los que pueden acceder los estudiantes de una institución. Las becas se determinan por los siguientes parámetros:

1.  El porcentaje de rebaja de la beca se calcula en base al promedio de nota del alumno.
2.  Luego se calcula el total que el alumno debe pagar tomando en cuenta el tipo de estudios que va a seguir.

Las tarifas y el porcentaje son los indicados en el siguiente cuadro.

Promedio de Notas Porcentaje de Beca
Entre 13 y 15     10%
Desde 16 hasta 18 25%
19 o 20           50%
Menores de 13     0%

Tipo de Estudio Monto
Pregrado  50,000
Postgrado 75,000
MBA       85,000
Doctorado 130,000

Finalmente las cuotas se determinarán por la clasificación que se le ha dado al estudiante previamente:

Tipo de Estudiante  Cuotas
Parttime              36
Fulltime              24
Independiente         12
Por la empresa         6
Externo                3

Desarrollar un subprograma que permita determinar lo siguiente:

• Porcentaje de Beca.
• Monto a pagar por tipo de estudio.
• Cantidad de cuotas.
• Cuota mensual que deberá pagar un estudiante. 

=end
def porcentaje_beca promedio
	case promedio
  when 0..12
    0.0
  when 13..15
    0.1
  when 16..18
    0.25
  else
    0.50
  end
end

def monto tipo_de_estudio
	case tipo_de_estudio
  when "Pregrado"
    50000
  when "Postgrado"
    75000
  when "MBA"
    85000
  when "Doctorado"
    130000
  end
end

def cuotas tipo_de_estudiante
  case tipo_de_estudiante
  when "Parttime"
    36
  when "Fulltime"
    24
  when"Independiente"
    12
  when "Por la empresa"
    6
  when "Externo"
    3
  end
end

def cuota_mensual promedio,tipo_de_estudio,tipo_de_estudiante
	((monto(tipo_de_estudio) * (1 - porcentaje_beca(promedio))) / cuotas(tipo_de_estudiante)).round(2)
end
#--- zona de test ----

def validate(expected, value)    
  expected == value ? "." : "F"
end

def test_porcentaje_beca
    print validate(0.0,porcentaje_beca(10))
    print validate(0.1,porcentaje_beca(14))
    print validate(0.25,porcentaje_beca(17))
	  print validate(0.50,porcentaje_beca(20))
end

def test_monto
    print validate(50000,monto("Pregrado"))
    print validate(75000,monto("Postgrado"))
    print validate(85000,monto("MBA"))
	  print validate(130000,monto("Doctorado"))
end

def test_cuotas
    print validate(36,cuotas("Parttime"))
    print validate(24,cuotas("Fulltime"))
    print validate(12,cuotas("Independiente"))
	  print validate(6,cuotas("Por la empresa"))
    print validate(3,cuotas("Externo"))
end

def test_cuota_mensual
    print validate(1388.89,cuota_mensual(10,"Pregrado","Parttime"))
    print validate(5312.5,cuota_mensual(17,"MBA","Independiente"))
    print validate(11250.0,cuota_mensual(14,"Postgrado","Por la empresa"))
    print validate(4062.5,cuota_mensual(18,"Doctorado","Fulltime"))
    print validate(12500.0,cuota_mensual(9,"Postgrado","Por la empresa"))
    print validate(32500.0,cuota_mensual(16,"Doctorado","Externo"))
    print validate(7500.0,cuota_mensual(13,"Pregrado","Por la empresa"))
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_porcentaje_beca
  test_monto
  test_cuotas
  test_cuota_mensual
  puts " "
end
test
