=begin 
Una empresa desea realizar un sistema codificación 
de persona naturales. Para ello se requiere que 
la persona ingrese su código de 4 cifras. 
El sistema verificará que código numérico tenga 
4 cifras. 

Adicional a eso requiere el sistema de codificación 
que consiste en la multiplicación de los dígitos 
que forman el código. De tal manera que si el 
código es 1234 entonces la codificación será 24 
(1 x 2 x 3 x 4). En caso se envíe un valor con 
el número incorrecto de dígitos la respuesta será 0

=end
def cantidad_digitos(clave)
  contador = 0
  while(clave > 0)
    contador = contador + 1
    clave = clave / 10
  end
  if contador == 4
    true
  else
    false
  end
end

def suma_digitos(clave)
  total = 1
  if cantidad_digitos(clave)
    while clave > 0
      valor = clave % 10
      total = total * valor
      clave = clave / 10
    end
    total
  else
    0
  end
end



#--- zona del programa principal ----

#--- zona de test ----
def test_cantidad_digitos
    print validate(true, cantidad_digitos(1234)) 
    print validate(false, cantidad_digitos(109837)) 
    print validate(false, cantidad_digitos(1983719837465465)) 
end

def test_transporte
    print validate(240, suma_digitos(3454)) 
    print validate(60, suma_digitos(1345)) 
    print validate(0, suma_digitos(34456)) 
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_cantidad_digitos
  puts ""
  test_transporte
  puts " "
end
test

