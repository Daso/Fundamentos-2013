#encoding:UTF-8
=begin
 La empresa de telefonía TENTEL se encuentra en una campaña agresiva de ventas para lo cual ha contratado a varios vendedores con el propósito de que ofrezcan sus productos. Dado que la fuerza de ventas se ha incrementado mucho, la empresa necesita un programa que permita calcular las comisiones que se le darán a cada vendedor. La comisión está basada en un porcentaje del paquete que vendan y de la cantidad vendida.

El precio de los paquetes es la siguiente:
• Paquete 49, 50 nuevos soles
• Paquete 99, 100 nuevos soles
• Paquete 199, 200 nuevos soles

Para paquete tiene un porcentaje de comisión es de 3%, 7%, 15% respectivamente. Por ejemplo si un vendedor vende 3 paquetes 49, 2 paquetes 99 y 10 paquetes 199, su comisión seria: 
- Por paquetes 49    3 * 50 * 0.03 + 
- Por paquetes 99    2 * 100 * 0.07 + 
- Por paquetes 199 10 * 200 * 0.15
 Total comisión    318.5

Además el vendedor tiene de premio por volumen de ventas que equivale a un porcentaje extra sobre la comisión que se determina de la siguiente manera:

- De 8 a 12 paquetes totales, tiene un bono de 10% 
- De 13 a 17 paquetes totales, tiene un bono de 15% 
- Más de 17 paquetes totales, tiene un bono de 20% 

Desarrollar un programa que permita determinar el monto que se le va a pagar a un vendedor, en base a sus ventas.
  
=end
def calcularcomision(cantidadpaquete49,cantidadpaquete99,cantidapaquete199)
  a = cantidadpaquete49 * 50 * 0.03
  b = cantidadpaquete99 * 100 * 0.07
  c = cantidapaquete199 * 200 * 0.15
  a + b + c
end

def calcularbonoporvolumen(totalvendido)
 case totalvendido
    when 0..7
      0.0
    when 8..12
      0.10
    when 13..17
      0.15
    else
      0.20
  end
end

def calculartotal(cantidadpaquete49,cantidadpaquete99,cantidapaquete199)
  total = cantidadpaquete49 + cantidadpaquete99 + cantidapaquete199
  bono = calcularbonoporvolumen(total)
  comision = calcularcomision(cantidadpaquete49,cantidadpaquete99,cantidapaquete199)
  (comision + (comision * bono)).round(2)
end

#--- zona de test ----

def test_calcularcomision   
    print validate(318.50, calcularcomision(3,2,10))
	print validate(144.0, calcularcomision(2,3,4))
	print validate(0.0,   calcularcomision(0,0,0))  	
end

def test_calcularbonoporvolumen
    print validate(0.00, calcularbonoporvolumen(4)) 
    print validate(0.15, calcularbonoporvolumen(15)) 
    print validate(0.20, calcularbonoporvolumen(150)) 
    print validate(0.20, calcularbonoporvolumen(300)) 
end

def test_calculartotal
    print validate(366.28, calculartotal(3,2,10)) 
    print validate(158.4, calculartotal(2,3,4)) 
    print validate(439.8, calculartotal(7,8,10)) 
	print validate(377.2, calculartotal(0,4,10)) 
    print validate(0.0, calculartotal(0,0,0)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularcomision
  puts " "
  test_calcularbonoporvolumen
  puts " "
  test_calculartotal
  puts " "
end
test
