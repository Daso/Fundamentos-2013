=begin 
Una empresa está implementando una nueva codificación para sus productos 
y estos están asociados con el estándar EAN-11. La ventaja es que cada 
compañía puede elegir el algoritmo de cómo se debe generar el número de 
verificación de este nuevo código de producto.

Este código de producto debe tener 11 dígitos incluyendo el dígito de 
verificación. Para el cálculo de este digito de verificación se deben 
sumar los números en las posiciones pares y multiplicarlos por 2, de 
igual forma se deben sumar los números en las posiciones impares y 
multiplicarlos por 3. Ambos cálculos deben sumares y nos debemos quedar 
con el ultimo digito de esa suma.

Por ejemplo, si tengo el código 25654316837, considerar primero que 
tenga 11 dígitos para luego verificar que el último digito, que es el 
número 7, sea el dígito de verificación. 

Para la suma no se debe considerar el último dígito que es el de 
verificación. 

Para obtener el cálculo debemos hacer lo siguiente:

5+5+3+6+3 = 22 * 2 = 44
2+6+4+1+8 = 21 * 3 = 63

44+63 = 107  7 es el digito de verificación, al ser iguales entonces el código del producto es correcto.

La empresa necesita lo siguiente:
●	Desarrollar un programa que permita validar que el código a procesar tenga efectivamente los 11 dígitos. Si la cantidad de dígitos es correcta se debe enviar un mensaje indicando “correcto”, en caso contrario “incorrecto”.
●	Desarrollar un programa que permita verificar que el código a procesar este bien generado y para ello se debe realizar la comprobación del digito de verificación de acuerdo al proceso indicado líneas arriba. De igual forma si es que todo es conforme se debe enviar un mensaje indicando “digito correcto” o de caso contrario “error digito”. Hay que considerar que primero se debe validar la cantidad de dígitos en el código antes de poder realizar esta validación. Si en caso no cumpla con la primera validación también se debe enviar un mensaje de “error digito”.


=end 

def validar_codigo(numero)
  contador = 0
  while numero > 0
    contador += 1
	numero = numero / 10  
  end 
  if contador == 11
    "correcto"
  else
    "incorrecto"
  end 
end

def validar_digito(numero)
  suma_impares = 0
  suma_pares = 0
  posicion = 11 
  digito_validador = numero % 10
  if validar_codigo(numero) == "incorrecto"
    "error digito"
  else
    while numero > 0 
      digito = numero % 10 
	  if posicion != 11 
        if posicion % 2 != 0 
	      suma_impares = suma_impares + digito
	    else
	      suma_pares = suma_pares + digito 
	    end 
	  end
	  numero = numero / 10 
	  posicion = posicion - 1
    end 
  end 
  verificacion = (suma_impares * 3 + suma_pares * 2) % 10 
  if verificacion == digito_validador 
    "digito correcto"
  else 
    "error digito"
  end	
end

#----------Zona de Test------------------

def test_validar_codigo
	print validate("correcto",validar_codigo(25654316837))
	print validate("incorrecto",validar_codigo(2342345))
	print validate("correcto",validar_codigo(65432134543))
	print validate("correcto",validar_codigo(14379643269))
end
    
def test_validar_digito
	print validate("digito correcto",validar_digito(25654316837))
	print validate("error digito",validar_digito(2342345))
	print validate("error digito",validar_digito(65432134543))
	print validate("digito correcto",validar_digito(14379643269))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_validar_codigo
  puts " "
  test_validar_digito
  puts " "
end

test
