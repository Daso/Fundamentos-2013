#encoding : UTF-8
=begin
Desarrollar un ejercicio que me permita 
determinar si un número es par, impar y 
si es mayor o no que cero
=end

def mayorMenorParImpar(numero)
   mensaje = "El número es: "
   if numero > 0
     mensaje = mensaje + "mayor que cero "
   elsif numero == 0
     mensaje = mensaje + "igual a cero "
   else
     mensaje = mensaje + "menor que cero "
   end
   if (numero % 2) == 0
     mensaje = mensaje + "y par"
   else
     mensaje = mensaje + "e impar"
   end
   return mensaje
end
puts mayorMenorParImpar(0)
