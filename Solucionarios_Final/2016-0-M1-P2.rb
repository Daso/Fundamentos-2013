=begin 
Codigo de Descuento
La feria de Móviles se lleva a cabo anualmente en Barcelona. Para dicho evento existen 3 tipos de entrada(normal, silver, gold) y los precios son respectivamente (700,1700,2700 euros). Para las empresas que tienen stands dentro de la feria se les da la facilidad para que puedan tener códigos promocionales que otorga un monto de descuento. Dicho código puede ser utilizado por cualquier persona asistente a la feria y es utilizado al momento de su registro. Dichos códigos son cadenas de texto de 10 caracteres.

Se le pide desarrollar funciones que serán utilizadas durante el registro de los usuarios y usted apoyará en las siguientes funcionalidades:

a)	Determinar cuál es el monto a pagar dado un tipo de entrada.

b)	Dado un código promocional que ingresa un usuario al momento de su registro, validar si es que dicho código cuenta con el formato de 10 caracteres y está dentro de la lista de códigos promocionales.

c)	Determinar cuánto es el descuento que tiene asignado un determinado código promocional válido.

d)	Determinar cuánto es lo que finalmente tiene que pagar el asistente que se registra si es que ingresa un código promocional. Si el descuento es mayor al costo de la entrada entonces el monto a pagar será 0.


=end

def obtenerMontoEntrada(tipoEntrada)
  case tipoEntrada
  when "normal"
  	700
  when "gold"	 
  	2700
  when "silver"
  	1700
  else
  	0
  end
end
    
def validarCodigo(codigo, listaCodigos)
  respuesta = false
  if codigo.size == 10
    for i in 0..listaCodigos.size - 1
       if listaCodigos[i] == codigo
          respuesta = true 
       end
    end    
  end
  respuesta
end

def obtenerMontoDescuentoCodigo(codigo, listaCodigos, listaMontoDescuento)
  descuento = 0	
  for i in 0..listaCodigos.size - 1
    if codigo == listaCodigos[i]
       descuento = listaMontoDescuento[i]
    end	
  end	 
  descuento
end

def obtenerMontoPagar(codigo, tipoEntrada, listaCodigos, listaMontoDescuento)
  monto = obtenerMontoEntrada(tipoEntrada)
  descuento = obtenerMontoDescuentoCodigo(codigo, listaCodigos, listaMontoDescuento)	 

  if monto - descuento < 0
  	 0
  else
     monto - descuento
  end

end

#----------Zona de Test------------------

def test_obtenerMontoEntrada
  print validate(700, obtenerMontoEntrada("normal"))
  print validate(2700, obtenerMontoEntrada("gold"))
  print validate(1700, obtenerMontoEntrada("silver"))
  print validate(0, obtenerMontoEntrada("ultra"))
end
    
def test_validarCodigo
	print validate(false, validarCodigo("asdf", @listaCodigos))
    print validate(true, validarCodigo("ASDF123456", @listaCodigos))
	print validate(false, validarCodigo("ASDF987654", @listaCodigos))
end

def test_obtenerMontoDescuentoCodigo
	print validate(0, obtenerMontoDescuentoCodigo("asdf", @listaCodigos, @montosDescuento))
    print validate(100, obtenerMontoDescuentoCodigo("ASDF123456", @listaCodigos, @montosDescuento))
    print validate(1200, obtenerMontoDescuentoCodigo("AARAA0034D", @listaCodigos, @montosDescuento))
    print validate(0, obtenerMontoDescuentoCodigo("ASDF987654", @listaCodigos, @montosDescuento))
end

def test_obtenerMontoPagar
	print validate(700, obtenerMontoPagar("asdf", "normal", @listaCodigos, @montosDescuento))
    print validate(2600, obtenerMontoPagar("ASDF123456", "gold", @listaCodigos, @montosDescuento))
    print validate(500, obtenerMontoPagar("AARAA0034D", "silver", @listaCodigos, @montosDescuento))
    print validate(0, obtenerMontoPagar("AARAA0034D", "normal", @listaCodigos, @montosDescuento))
   
end

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
	@listaCodigos = ["AVIAV1223D",
		       		 "LANLA0342T",
		       		 "AARAA0034D",
			         "COPCP0234D",
			         "ASDF123456"]
		
	@montosDescuento = [300,
						900,
						1200,
						400,
						100]

	puts "Test de prueba del programa"
	puts "---------------------------"
	test_obtenerMontoEntrada
	test_validarCodigo
	test_obtenerMontoDescuentoCodigo
	test_obtenerMontoPagar
	puts " "
end
test
