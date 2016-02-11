=begin
Pregunta 1 

EL bróker de seguros GAEL S.A. tiene la necesidad contar con un programa que le permita realizar el cálculo de la prima de seguro para sus pólizas de autos para las distintas entidades financieras que se lo soliciten. Para ello, aplica la siguiente fórmula para calcular el costo total de la póliza:

Costo total = 3% del valor del auto + Cargo por año de fabricación + Cargo por la edad del 
propietario + Cargo anual por entidad financiera.

Se deben considerar las siguientes tablas para obtener el valor de los cargos indicados en la fórmula del costo total de la póliza:

Cargo por año de fabricación
Año	% del valor del auto
2000 o anterior	1.5%
Del 2001 al 2007	3.1%
Igual o mayor al 2008	5.1%


Cargo por edad
Edad	(US$) Cargo
18 a 23	350.0
24 a 55	200.0
56 a 65	400.0

Se debe tener en cuenta que la compañía no asegura autos a personas con edad fuera de esos rangos.
Cargo por entidad financiera
Descripción	(US$) Cargo mensual
Banco	30.0
Financiera	20.0
Caja municipal	15.0
Caja rural	10.0

Se solicita lo siguiente:

1.Subprograma que obtenga el cargo por año de fabricación.
2.Subprograma que obtenga el cargo por edad del propietario.
3.Subprograma que obtenga el cargo por tipo de entidad financiera.
4.Subprograma que obtenga el Costo Total de la Póliza.

=end 

#encoding:UTF-8
def obtenerCargoPorAnio(anio,valorauto)
  case anio
    when 0..2000
	  valorauto * 1.5 / 100
	when 2001..2007
	  valorauto * 3.1 / 100 
	else
	  valorauto * 5.1 / 100
  end
end

def obtenerCargoPorEdad(edad)
  case edad
    when 18..23
      350.0	
	when 24..55
	  200.0
	when 56..65
	  400.0
	else
	  0.0
	end 
end

def obtenerCargoEntidad(entidad)
  case entidad
  when "Banco"
    360.0
  when "Financiera"
  240.00 
  when "Caja municipal"
  180.00
  else
  120.0
  end
end

def costoTotal(valorauto,anio,edad,entidad)	
  va = valorauto * 3 / 100 
  cf = obtenerCargoPorAnio(anio,valorauto)
  ce = obtenerCargoPorEdad(edad)
  ca = obtenerCargoEntidad(entidad)
  if ce == 0
    0.00
  else 
    va + cf + ce + ca  
  end
end

#--- zona de test ----

def test_obtenerCargoPorAnio   
    print validate(300.00, obtenerCargoPorAnio(1995,20000))
	print validate(837.00, obtenerCargoPorAnio(2006,27000))
	print validate(816.00, obtenerCargoPorAnio(2011,16000))  	
end

def test_obtenerCargoPorEdad
    print validate(350.0, obtenerCargoPorEdad(19)) 
    print validate(200.0, obtenerCargoPorEdad(26)) 
    print validate(400.0, obtenerCargoPorEdad(56)) 
    print validate(0.0, obtenerCargoPorEdad(68)) 
end

def test_obtenerCargoEntidad
    print validate(360.0, obtenerCargoEntidad("Banco")) 
    print validate(240.0, obtenerCargoEntidad("Financiera")) 
    print validate(180.0, obtenerCargoEntidad("Caja municipal")) 
	print validate(120.0, obtenerCargoEntidad("Caja rural")) 
end

def test_costoTotal
    print validate(1610.0, costoTotal(20000,1995,19,"Banco")) 
    print validate(2087.0, costoTotal(27000,2006,26,"Financiera")) 
    print validate(1876.0, costoTotal(16000,2011,56,"Caja municipal")) 
	print validate(2788.0, costoTotal(28000,2015,60,"Caja rural"))     
	print validate(0.0, costoTotal(28000,2015,68,"Caja rural"))     
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtenerCargoPorAnio
  puts " "
  test_obtenerCargoPorEdad
  puts " "
  test_obtenerCargoEntidad
  puts " "
  test_costoTotal
  puts " "
end
test
