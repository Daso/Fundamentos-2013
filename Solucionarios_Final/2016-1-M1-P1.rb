=begin 
Pregunta 1.- Caja fuerte “Leviatán”

La empresa Cajas seguras, fábrica una de cajas fuertes más seguras del mundo llamada “Leviatán”. Su esquema de seguridad consta de un algoritmo que permite determinar,  mediante un proceso de encriptación, si es que la clave es correcta. El algoritmo funciona de la siguiente manera:

Se reciben tres números de 10 dígitos. De cada número recibido, debemos tomar los primeros 9 dígitos de los 10 presentes y se multiplican. Con el número obtenido como resultado de la multiplicación, se procede a separar sus dígitos y se suman todos, si el resultado es mayor que 10 se toma sólo el último digito y se compara con el último digito del número original, si son iguales, el código es correcto, en cualquier otro caso, es incorrecto.

Para que el acceso a la caja fuerte sea permitido, solo dos de los tres números ingresados deben ser correctos, sin importar el orden. 

Para desarrollar el programa que necesita la empresa, debe elaborar los siguientes subprogramas:
	
a)	Elaborar un subprograma que verifique la multiplicación de los dígitos de cada número

b)	Elaborar un subprograma que determine la suma de los dígitos del nuevo número resultado de la multiplicación del punto anterior.

c)	Elaborar un subprograma que valide si el número recibido es correcto

d)	Elaborar un subprograma para determinar si los números ingresados permiten el acceso a la caja fuerte


=end 


def determinarmultiplicaciondigitos(numero)
  numero = numero / 10 
  total = 1 
  while(numero > 0)
    total = total * (numero % 10)
    numero = numero / 10 
  end 
  total
end

def determinarsumadigitos(numero)
  nuevo_numero = determinarmultiplicaciondigitos(numero)
   total = 0 
  while(nuevo_numero > 0)
    total = total + (nuevo_numero % 10)
    nuevo_numero = nuevo_numero / 10 
  end 
  total
end

def determinarnumerocorrecto(numero)
  valor = determinarsumadigitos(numero)
  if (valor % 10) == (numero % 10)
  	true
  else
  	false
  end
end


def determinaraccesocajafuerte(numeros)
  cont = 0 
  for i in 0...numeros.size 
    if determinarnumerocorrecto(numeros[i]) == true
    	cont += 1
    end 
  end 
  if cont >= 2 
  	return true 
  else
   return false 
  end 
end


#--- zona del programa principal ----

#--- zona de test ----
def test_determinarmultiplicaciondigitos
    print validate(362880, determinarmultiplicaciondigitos(1234567896)) 
    print validate(145152, determinarmultiplicaciondigitos(1298378328)) 
    print validate(326592, determinarmultiplicaciondigitos(1983719837)) 
end

def test_determinarsumadigitos
    print validate(27, determinarsumadigitos(1234567896)) 
    print validate(18, determinarsumadigitos(1298378328)) 
    print validate(27, determinarsumadigitos(1983719837)) 
end

def test_determinarnumerocorrecto
  print validate(false,  determinarnumerocorrecto(1234567896))
	print validate(true,determinarnumerocorrecto(1298378328)) 	
	print validate(true, determinarnumerocorrecto(1983719837))
end

def test_determinaraccesocajafuerte
  numeros1=[1234567896,1298378328,1983719837]
  numeros2=[3244577896,1233338377,7783711234]
  numeros3=[9876543211,1234567891,1111441239]

  print validate(true, determinaraccesocajafuerte(numeros1))
  print validate(false, determinaraccesocajafuerte(numeros2))
  print validate(false, determinaraccesocajafuerte(numeros3))

end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarmultiplicaciondigitos
  puts ""
  test_determinarsumadigitos
  puts " "
  test_determinarnumerocorrecto
  puts " "
  test_determinaraccesocajafuerte
  puts " "
end
test

