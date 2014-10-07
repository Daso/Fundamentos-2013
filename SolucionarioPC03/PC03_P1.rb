=begin
Una empresa de seguridad desea crear un algoritmo para crear las llaves
de seguridad de las personas que van a usar sus servicios. Estas
llaves son únicas y obedecen a una codíficación particular que consiste en 
lo siguiente. 

La fecha de nacimiento de la persona determina los dientes de la llave. Esto 
es calculado mediante un algoritmo que consiste en lo siguiente:

La fecha de nacimiento se coloca con el siguiente formato:

DiaMesAño. 

Luego se procede a contar la cantidad de cifras impares que tiene el 
número formado por estos tres elementos y que será el que determine 
la cantidad de dientes que tendrá la llave (desde 0 hasta 8). Finalmente 
se crea un código único que irá con la llave que obedece a la siguiente fórmula

código = cantidad de cifras de: suma de cifras pares multiplicado por la
 suma de cifras impares 

Ejemplos: 

Alguien del 30 de Julio de 1973

3071973 tiene 6 valores impares por lo que será una llave de 6 dientes. 

El código de la llave será: 0 * 30 = 0. Será una llave de 6 dientes con el código 1

Alguien del 03 de Diciembre de 1987

3121987 tiene 5 valores impares por lo que será una llave de 5 dientes. 

El código de la llave será: 10 * 21 = 210. Será una llave de 5 dientes con el 
código 3

Desarrollar un subprograma que calcule la cantidad de dientes. 

Desarrollar un subprograma que calcule el código de la persona.

*Puede crear los métodos adicionales que crea necesarios. 

=end

def cantidad_de_dientes(fecha)
  dientes = 0
  while fecha > 0
    if (fecha % 10) % 2 != 0
	  dientes = dientes + 1
	end
	fecha = fecha / 10
  end
  return dientes
end

def codigo(fecha)
  cifras_totales = 0
  cifras_impares = 0
  cifras_pares = 0
  codigo = 1
  while fecha > 0    
    cifras_totales = cifras_totales + (fecha % 10)
	if (fecha % 10) % 2 != 0
	  cifras_impares = cifras_impares + (fecha % 10)
	end
	fecha = fecha / 10	
	
  end
  cifras_pares = cifras_totales - cifras_impares
  total = cifras_pares * cifras_impares
  while total > 9    
    codigo = codigo + 1
	total = total / 10
  end
  return codigo
end


#--- zona de test ----

def test_cantidad_de_dientes
    print validate(5, cantidad_de_dientes(3121987))
    print validate(6, cantidad_de_dientes(3071973))
end

def test_codigo
    print validate(3, codigo(3121987))
    print validate(1, codigo(3071973))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_cantidad_de_dientes
  puts " "
  test_codigo
  puts " "
end
test