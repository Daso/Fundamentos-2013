=begin
Un conocido diario ofrece suscripciones anuales a los clientes. 
Con la finalidad de promover este tipo de venta, el diario ha 
ofrecido a otras empresas de diverso índole, suscripciones a 
los trabajadores de dichas empresas con el aval de las mismas.
 Los precios de las suscripciones son las siguientes:

-	Suscripción a la revista “Vamos”: 150 nuevos soles Anuales.
-	Suscripción a la revista “Cosas”: 170 nuevos soles Anuales.
-	Suscripción a la revista “Automas”: 250 nuevos soles Anuales.
-	Suscripción a la revista “Construye”: 200 nuevos soles Anuales.

Adicionalmente, dependiendo de la cantidad de suscripciones se 
pueden dar descuentos por volumen: 

-	De 1 a 10 suscripciones, tiene un 0% de descuento.
-	De 11 a 100 suscripciones, tiene un 15% de descuento.
-	De 101 a 200 suscripciones, tiene un 21% de descuento.
-	Más de 200 suscripciones, tiene un 25% de descuento.

Desarrollar un subprograma que permita determinar el precio de 
cada suscripción, el porcentaje de descuento dependiendo de la 
cantidad de suscripciones a adquirir, así como el total que debería 
pagar la empresa si adquiriera un determinado tipo y número de 
suscripciones 
=end
#encoding:UTF-8
def calcularPrecioSuscripcion(tipo)
  case tipo
   when "Vamos"
     return 150.0
   when "Cosas"
     return 170.0
    when "Automas"
     return 250.0
    when "Construye"
     return 200.0
    when ""
     return 0.0 
    end     
end

def calcularDescuentoCantidad(cantidad)

  if cantidad >= 1 && cantidad <= 10
   return 0.00
  elsif cantidad >=11 && cantidad <= 100
   return 0.15
  elsif cantidad >= 101 && cantidad <= 200
   return 0.21
  else
   return 0.25
  end
end


def calcularTotalPagar(tipo,cantidad)
  precio = calcularPrecioSuscripcion(tipo)
  descuento = calcularDescuentoCantidad(cantidad)
  total = cantidad * precio
  return total - (total * descuento)
end

#--- zona de test ----

def test_calcularPrecioSuscripcion
  print validate(150.0, calcularPrecioSuscripcion("Vamos"))
	print validate(170.0, calcularPrecioSuscripcion("Cosas"))
  print validate(250.0, calcularPrecioSuscripcion("Automas"))    
	print validate(200.0, calcularPrecioSuscripcion("Construye"))    
	print validate(0.0, calcularPrecioSuscripcion(""))    	
end

def test_calcularDescuentoCantidad
    print validate(0.00, calcularDescuentoCantidad(5)) 
    print validate(0.15, calcularDescuentoCantidad(15)) 
    print validate(0.21, calcularDescuentoCantidad(150)) 
    print validate(0.25, calcularDescuentoCantidad(300)) 
end

def test_calcularTotalPagar
    print validate(0.0, calcularTotalPagar("Vamos",0)) 
    print validate(1734.0, calcularTotalPagar("Cosas",12)) 
    print validate(19125.0, calcularTotalPagar("Automas",90)) 
	print validate(15958.0, calcularTotalPagar("Construye",101)) 
    print validate(23625.0, calcularTotalPagar("Vamos",210)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularPrecioSuscripcion
  test_calcularDescuentoCantidad
  test_calcularTotalPagar
  puts " "
end
test
